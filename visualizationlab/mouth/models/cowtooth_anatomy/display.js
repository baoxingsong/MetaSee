MODELS['new_oral.obj'] = {
  materials: {
    'tongue': {
      Kd: [236, 134, 121],
    },
    'default': {
      Kd: [149, 149, 149],
    },
    'saliva': {
      Kd: [222, 236, 251],
    },
    'label': {
      Kd: [237, 221, 106],
    },
    'num': {
      Kd: [0, 0, 0],
    },
    'tooth': {
      Kd: [255, 228, 216],
    },
    'gums': {
      Kd: [236, 134, 121],
    },
  },
  decodeParams: {
    decodeOffsets: [-5166,-8377,-6269,0,0,-511,-511,-511],
    decodeScales: [0.005221,0.005221,0.005221,0.000978,0.000978,0.001957,0.001957,0.001957],
  },
  urls: {
    '5a2560d5.out.utf8': [
      { material: 'default',
        attribRange: [0, 1584],
        indexRange: [12672, 2806],
        bboxes: 21090,
        names: ['head', ],
        lengths: [8418, ],
      },
    ],
    '6dda1252.out.utf8': [
      { material: 'gums',
        attribRange: [0, 9367],
        indexRange: [74936, 18726],
        bboxes: 131114,
        names: ['gums', ],
        lengths: [56178, ],
      },
    ],
    '8cbf479a.out.utf8': [
      { material: 'label',
        attribRange: [0, 776],
        indexRange: [6208, 752],
        bboxes: 8464,
        names: ['lable2', 'lable3', 'lable4', 'lable1', ],
        lengths: [564, 564, 564, 564, ],
      },
    ],
    '39f1d66e.out.utf8': [
      { material: 'num',
        attribRange: [0, 3772],
        indexRange: [30176, 3672],
        bboxes: 41192,
        names: ['lable2', 'lable3', 'lable4', 'lable1', ],
        lengths: [3504, 5184, 804, 1524, ],
      },
    ],
    '15167043.out.utf8': [
      { material: 'saliva',
        attribRange: [0, 286],
        indexRange: [2288, 416],
        bboxes: 3536,
        names: ['saliva', ],
        lengths: [1248, ],
      },
    ],
    '5e277438.out.utf8': [
      { material: 'tongue',
        attribRange: [0, 337],
        indexRange: [2696, 512],
        bboxes: 4232,
        names: ['tongue', ],
        lengths: [1536, ],
      },
    ],
    '2fc29857.out.utf8': [
      { material: 'tooth',
        attribRange: [0, 55294],
        indexRange: [442352, 110479],
        bboxes: 1392682,
        names: ['tooth', ],
        lengths: [331437, ],
      },
      { material: 'tooth',
        attribRange: [773789, 44224],
        indexRange: [1127581, 88367],
        bboxes: 1392688,
        names: ['tooth', ],
        lengths: [265101, ],
      },
    ],
  }
};
