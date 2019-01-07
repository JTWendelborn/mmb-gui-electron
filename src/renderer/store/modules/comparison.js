import groupBy from 'lodash.groupby';
import map from 'lodash.map';

import compare from './comparison.compare.PLATFORM';

const namespaced = true;

const state = {
  show: false,
  inProgress: false,
  stdout: [],
  stderr: [],
  data: [],
  error: false,
};

const getters = {
  show(state) {
    return state.show;
  },
  data(state) {
    return state.data;
  },
  stdout(state) {
    return state.stdout;
  },
  inProgress(state) {
    return state.inProgress;
  },
  varianceData(state, getters) {
    const variances = getters.data.filter(data => data.func === 'VAR');

    const grouped = groupBy(variances, data => `${data.model}, ${data.rule}`);

    const result = map(grouped, (data, index) => ({
      title: index,
      data: {
        inflation: (data.find(d => d.outputvar === 'inflation') || {}).values,
        interest: (data.find(d => d.outputvar === 'interest') || {}).values,
        output: (data.find(d => d.outputvar === 'output') || {}).values,
        outputgap: (data.find(d => d.outputvar === 'outputgap') || {}).values,
      },
    }));

    return result;
  },
  chartData(state, getters) {
    const others = getters.data.filter(data => data.func !== 'VAR');

    const grouped = groupBy(others, data => `${data.rule} ${data.shock} ${data.outputvar} ${data.func}`);

    const result = map(grouped, (data, index) => {
      const series = data.map(d => ({
        name: d.model,
        data: d.values,
      }));

      return {
        title: index,
        series,
      };
    });

    return result;
  },
};

const mutations = {
  start(state) {
    state.stdout = [];
    state.stderr = [];
    state.data = [];
    state.error = false;
    state.inProgress = true;
    state.show = true;
  },
  addStdOut(state, data) {
    state.stdout.push(data);
  },
  addStdErr(state, data) {
    state.stderr.push(data);
  },
  setData(state, data) {
    state.data = data;
  },
  addData(state, data) {
    state.data = (state.data || []).concat(data);
  },
  error(state, error) {
    state.error = error;
  },
  done(state, data) {
    state.data = data;
    state.inProgress = false;
    state.show = true;
  },
};

const actions = {
  async compare(ctx) {
    ctx.commit('start');

    const models = ctx.rootGetters['selections/models'];
    const policyRules = ctx.rootGetters['selections/policyRules'];
    const shocks = ctx.rootGetters['selections/shocks'];
    const outputVars = ctx.rootGetters['selections/outputVars'];

    let result = [];

    try {
      result = await compare(ctx, models, policyRules, outputVars, shocks);
    } catch (e) {
      ctx.commit('error', e);
      throw e;
    } finally {
      ctx.commit('done', result);
    }
  },
};

export default {
  namespaced,
  state,
  getters,
  mutations,
  actions,
};
