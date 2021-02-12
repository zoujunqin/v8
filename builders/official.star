# Copyright 2020 the V8 project authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.

load("//lib/lib.star", "GOMA", "in_console", "v8_builder")

in_category = in_console("official")

in_category(
    "Linux",
    v8_builder(
        name = "V8 Official Arm32",
        bucket = "ci",
        triggered_by = ["v8-trigger-official"],
        triggering_policy = scheduler.policy(
            kind = scheduler.GREEDY_BATCHING_KIND,
            max_batch_size = 1,
        ),
        executable = "recipe:v8/archive",
        dimensions = {"os": "Ubuntu-16.04", "cpu": "x86-64"},
        properties = {"build_config": "Release", "builder_group": "client.v8.official", "target_bits": 32, "target_arch": "arm"},
        use_goma = GOMA.DEFAULT,
    ),
    v8_builder(
        name = "V8 Official Arm64",
        bucket = "ci",
        triggered_by = ["v8-trigger-official"],
        triggering_policy = scheduler.policy(
            kind = scheduler.GREEDY_BATCHING_KIND,
            max_batch_size = 1,
        ),
        executable = "recipe:v8/archive",
        dimensions = {"os": "Ubuntu-16.04", "cpu": "x86-64"},
        properties = {"build_config": "Release", "builder_group": "client.v8.official", "target_bits": 64, "target_arch": "arm"},
        use_goma = GOMA.DEFAULT,
    ),
    v8_builder(
        name = "V8 Official Android Arm32",
        bucket = "ci",
        triggered_by = ["v8-trigger-official"],
        triggering_policy = scheduler.policy(
            kind = scheduler.GREEDY_BATCHING_KIND,
            max_batch_size = 1,
        ),
        executable = "recipe:v8/archive",
        dimensions = {"os": "Ubuntu-16.04", "cpu": "x86-64"},
        properties = {"builder_group": "client.v8.official", "target_bits": 32, "build_config": "Release", "target_platform": "android", "target_arch": "arm"},
        use_goma = GOMA.DEFAULT,
    ),
    v8_builder(
        name = "V8 Official Android Arm64",
        bucket = "ci",
        triggered_by = ["v8-trigger-official"],
        triggering_policy = scheduler.policy(
            kind = scheduler.GREEDY_BATCHING_KIND,
            max_batch_size = 1,
        ),
        executable = "recipe:v8/archive",
        dimensions = {"os": "Ubuntu-16.04", "cpu": "x86-64"},
        properties = {"builder_group": "client.v8.official", "target_bits": 64, "build_config": "Release", "target_platform": "android", "target_arch": "arm"},
        use_goma = GOMA.DEFAULT,
    ),
    v8_builder(
        name = "V8 Official Linux32",
        bucket = "ci",
        triggered_by = ["v8-trigger-official"],
        triggering_policy = scheduler.policy(
            kind = scheduler.GREEDY_BATCHING_KIND,
            max_batch_size = 1,
        ),
        executable = "recipe:v8/archive",
        dimensions = {"os": "Ubuntu-16.04", "cpu": "x86-64"},
        properties = {"build_config": "Release", "builder_group": "client.v8.official", "target_bits": 32},
        use_goma = GOMA.DEFAULT,
    ),
    v8_builder(
        name = "V8 Official Linux32 Debug",
        bucket = "ci",
        triggered_by = ["v8-trigger-official"],
        triggering_policy = scheduler.policy(
            kind = scheduler.GREEDY_BATCHING_KIND,
            max_batch_size = 1,
        ),
        executable = "recipe:v8/archive",
        dimensions = {"os": "Ubuntu-16.04", "cpu": "x86-64"},
        properties = {"build_config": "Debug", "builder_group": "client.v8.official", "target_bits": 32},
        use_goma = GOMA.DEFAULT,
    ),
    v8_builder(
        name = "V8 Official Linux64",
        bucket = "ci",
        triggered_by = ["v8-trigger-official"],
        triggering_policy = scheduler.policy(
            kind = scheduler.GREEDY_BATCHING_KIND,
            max_batch_size = 1,
        ),
        executable = "recipe:v8/archive",
        dimensions = {"os": "Ubuntu-16.04", "cpu": "x86-64"},
        properties = {"build_config": "Release", "builder_group": "client.v8.official", "target_bits": 64},
        use_goma = GOMA.DEFAULT,
    ),
    v8_builder(
        name = "V8 Official Linux64 Debug",
        bucket = "ci",
        triggered_by = ["v8-trigger-official"],
        triggering_policy = scheduler.policy(
            kind = scheduler.GREEDY_BATCHING_KIND,
            max_batch_size = 1,
        ),
        executable = "recipe:v8/archive",
        dimensions = {"os": "Ubuntu-16.04", "cpu": "x86-64"},
        properties = {"build_config": "Debug", "builder_group": "client.v8.official", "target_bits": 64},
        use_goma = GOMA.DEFAULT,
    ),
)

in_category(
    "Windows",
    v8_builder(
        name = "V8 Official Win32",
        bucket = "ci",
        triggered_by = ["v8-trigger-official"],
        triggering_policy = scheduler.policy(
            kind = scheduler.GREEDY_BATCHING_KIND,
            max_batch_size = 1,
        ),
        executable = "recipe:v8/archive",
        dimensions = {"os": "Windows-10", "cpu": "x86-64"},
        properties = {"build_config": "Release", "builder_group": "client.v8.official", "target_bits": 32},
        use_goma = GOMA.ATS,
    ),
    v8_builder(
        name = "V8 Official Win32 Debug",
        bucket = "ci",
        triggered_by = ["v8-trigger-official"],
        triggering_policy = scheduler.policy(
            kind = scheduler.GREEDY_BATCHING_KIND,
            max_batch_size = 1,
        ),
        executable = "recipe:v8/archive",
        dimensions = {"os": "Windows-10", "cpu": "x86-64"},
        properties = {"build_config": "Debug", "builder_group": "client.v8.official", "target_bits": 32},
        use_goma = GOMA.ATS,
    ),
    v8_builder(
        name = "V8 Official Win64",
        bucket = "ci",
        triggered_by = ["v8-trigger-official"],
        triggering_policy = scheduler.policy(
            kind = scheduler.GREEDY_BATCHING_KIND,
            max_batch_size = 1,
        ),
        executable = "recipe:v8/archive",
        dimensions = {"os": "Windows-10", "cpu": "x86-64"},
        properties = {"build_config": "Release", "builder_group": "client.v8.official", "target_bits": 64},
        use_goma = GOMA.ATS,
    ),
    v8_builder(
        name = "V8 Official Win64 Debug",
        bucket = "ci",
        triggered_by = ["v8-trigger-official"],
        triggering_policy = scheduler.policy(
            kind = scheduler.GREEDY_BATCHING_KIND,
            max_batch_size = 1,
        ),
        executable = "recipe:v8/archive",
        dimensions = {"os": "Windows-10", "cpu": "x86-64"},
        properties = {"build_config": "Debug", "builder_group": "client.v8.official", "target_bits": 64},
        use_goma = GOMA.ATS,
    ),
)
in_category(
    "Mac",
    v8_builder(
        name = "V8 Official Mac64",
        bucket = "ci",
        triggered_by = ["v8-trigger-official"],
        triggering_policy = scheduler.policy(
            kind = scheduler.GREEDY_BATCHING_KIND,
            max_batch_size = 1,
        ),
        executable = "recipe:v8/archive",
        dimensions = {"os": "Mac-10.15", "cpu": "x86-64"},
        properties = {"build_config": "Release", "builder_group": "client.v8.official", "target_bits": 64},
        caches = [
            swarming.cache(
                path = "osx_sdk",
                name = "osx_sdk",
            ),
        ],
        use_goma = GOMA.DEFAULT,
    ),
    v8_builder(
        name = "V8 Official Mac64 Debug",
        bucket = "ci",
        triggered_by = ["v8-trigger-official"],
        triggering_policy = scheduler.policy(
            kind = scheduler.GREEDY_BATCHING_KIND,
            max_batch_size = 1,
        ),
        executable = "recipe:v8/archive",
        dimensions = {"os": "Mac-10.15", "cpu": "x86-64"},
        properties = {"build_config": "Debug", "builder_group": "client.v8.official", "target_bits": 64},
        caches = [
            swarming.cache(
                path = "osx_sdk",
                name = "osx_sdk",
            ),
        ],
        use_goma = GOMA.DEFAULT,
    ),
    v8_builder(
        name = "V8 Official Mac ARM64",
        bucket = "ci",
        triggered_by = ["v8-trigger-official"],
        triggering_policy = scheduler.policy(
            kind = scheduler.GREEDY_BATCHING_KIND,
            max_batch_size = 1,
        ),
        executable = "recipe:v8/archive",
        dimensions = {"os": "Mac-10.15", "cpu": "x86-64"},
        properties = {"build_config": "Release", "builder_group": "client.v8.official", "target_bits": 64, "target_arch": "arm"},
        caches = [
            swarming.cache(
                path = "osx_sdk",
                name = "osx_sdk",
            ),
        ],
        use_goma = GOMA.DEFAULT,
    ),
    v8_builder(
        name = "V8 Official Mac ARM64 Debug",
        bucket = "ci",
        triggered_by = ["v8-trigger-official"],
        triggering_policy = scheduler.policy(
            kind = scheduler.GREEDY_BATCHING_KIND,
            max_batch_size = 1,
        ),
        executable = "recipe:v8/archive",
        dimensions = {"os": "Mac-10.15", "cpu": "x86-64"},
        properties = {"build_config": "Debug", "builder_group": "client.v8.official", "target_bits": 64, "target_arch": "arm"},
        caches = [
            swarming.cache(
                path = "osx_sdk",
                name = "osx_sdk",
            ),
        ],
        use_goma = GOMA.DEFAULT,
    ),
)