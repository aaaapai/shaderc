use_relative_paths = True

vars = {
  'aaaapai_git': 'https://github.com/aaaapai',
  'abseil_git':  'https://github.com/aaaapai',
  'google_git':  'https://github.com/google',
  'khronos_git': 'https://github.com/KhronosGroup',

  'abseil_revision': '1a8e2efdf1b2659c96a5d647fc69022f2c6f86fb',
  'effcee_revision': '08da24ec245a274fea3a128ba50068f163390565',
  'glslang_revision': 'dd62136716e67bd9eb4c0c6bf6022601b4dbfe77',
  'googletest_revision': '1d17ea141d2c11b8917d2c7d029f1c4e2b9769b2',
  're2_revision': '4a8cee3dd3c3d81b6fe8b867811e193d5819df07',
  'spirv_headers_revision': 'ed8bf73cb1b5ebdf2aa8f1bcdaeef58f493bb687',
  'spirv_tools_revision': '503315d77f787c2fdb90e164c6869a1d3e7560b0',
}

deps = {
  'third_party/abseil_cpp':
      Var('abseil_git') + '/abseil-cpp.git@' + Var('abseil_revision'),

  'third_party/effcee': Var('google_git') + '/effcee.git@' +
      Var('effcee_revision'),

  'third_party/googletest': Var('google_git') + '/googletest.git@' +
      Var('googletest_revision'),

  'third_party/glslang': Var('aaaapai_git') + '/glslang.git@' +
      Var('glslang_revision'),

  'third_party/re2': Var('google_git') + '/re2.git@' +
      Var('re2_revision'),

  'third_party/spirv-headers': Var('aaaapai_git') + '/SPIRV-Headers.git@' +
      Var('spirv_headers_revision'),

  'third_party/spirv-tools': Var('aaaapai_git') + '/SPIRV-Tools.git@' +
      Var('spirv_tools_revision'),
}
