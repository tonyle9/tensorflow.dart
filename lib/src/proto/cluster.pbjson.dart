///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library tensorflow_cluster_pbjson;

const JobDef$json = const {
  '1': 'JobDef',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'tasks',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.JobDef.TasksEntry',
      '10': 'tasks'
    },
  ],
  '3': const [JobDef_TasksEntry$json],
};

const JobDef_TasksEntry$json = const {
  '1': 'TasksEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const ClusterDef$json = const {
  '1': 'ClusterDef',
  '2': const [
    const {
      '1': 'job',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.JobDef',
      '10': 'job'
    },
  ],
};
