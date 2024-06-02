use_relative_paths = True

vars = {
  'abseil_git':  'https://github.com/abseil',
  'google_git':  'https://github.com/google',
  'khronos_git': 'https://github.com/KhronosGroup',

  'abseil_revision': '5be22f98733c674d532598454ae729253bc53e82',
  'effcee_revision' : 'aea1f4d62ca9ee2f44b5393e98e175e200a22e8e',
  'glslang_revision': '2b19bf7e1bc0b60cf2fe9d33e5ba6b37dfc1cc83',
  'googletest_revision': 'a7f443b80b105f940225332ed3c31f2790092f47',
  're2_revision': 'b91097e3989a8c8b463c0b6d7ffe96dafa5d6fad',
  'spirv_headers_revision': 'ff2afc3afc48dff4eec2a10f0212402a80708e38',
  'spirv_tools_revision': '360d469b9eac54d6c6e20f609f9ec35e3a5380ad',
}

deps = {
  'third_party/abseil_cpp':
      Var('abseil_git') + '/abseil-cpp.git@' + Var('abseil_revision'),

  'third_party/effcee': Var('google_git') + '/effcee.git@' +
      Var('effcee_revision'),

  'third_party/googletest': Var('google_git') + '/googletest.git@' +
      Var('googletest_revision'),

  'third_party/glslang': Var('khronos_git') + '/glslang.git@' +
      Var('glslang_revision'),

  'third_party/re2': Var('google_git') + '/re2.git@' +
      Var('re2_revision'),

  'third_party/spirv-headers': Var('khronos_git') + '/SPIRV-Headers.git@' +
      Var('spirv_headers_revision'),

  'third_party/spirv-tools': Var('khronos_git') + '/SPIRV-Tools.git@' +
      Var('spirv_tools_revision'),
}
