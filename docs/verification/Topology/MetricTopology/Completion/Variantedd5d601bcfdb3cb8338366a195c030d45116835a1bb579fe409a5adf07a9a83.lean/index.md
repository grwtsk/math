# Verification target: GRWTSK.Topology.MetricTopology.Completion.Variantedd5d601bcfdb3cb8338366a195c030d45116835a1bb579fe409a5adf07a9a83

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf70b0eea9e5b68e903956463a7ccc9d22a08b45",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Completion/Variantedd5d601bcfdb3cb8338366a195c030d45116835a1bb579fe409a5adf07a9a83.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Completion/Variantedd5d601bcfdb3cb8338366a195c030d45116835a1bb579fe409a5adf07a9a83.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Completion/Variantedd5d601bcfdb3cb8338366a195c030d45116835a1bb579fe409a5adf07a9a83.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf70b0eea9e5b68e903956463a7ccc9d22a08b45`.

Source path: `GRWTSK/Topology/MetricTopology/Completion/Variantedd5d601bcfdb3cb8338366a195c030d45116835a1bb579fe409a5adf07a9a83.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Completion/Variantedd5d601bcfdb3cb8338366a195c030d45116835a1bb579fe409a5adf07a9a83.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.GroupCompletion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Real` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Algebra` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Isometry` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Completion` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Completion/Variantedd5d601bcfdb3cb8338366a195c030d45116835a1bb579fe409a5adf07a9a83.lean/declarations/instance--c71e536354ea90c9340bcc49.md) | 37 | `declaration-track:c71e536354ea90c9340bcc49836a761ba640be5bbe8fd5e898bc6195dd425548` |
| 2 | `theorem` | [uniformContinuous_dist](../../../../../mathematics/Topology/MetricTopology/Completion/Variantedd5d601bcfdb3cb8338366a195c030d45116835a1bb579fe409a5adf07a9a83.lean/declarations/uniformcontinuous-dist--f2744f25fc7a03fae1de9289.md) | 41 | `result-track:f2744f25fc7a03fae1de928913965b73d5a52732e9e8c2f97403aaeb97fde1a8` |
| 3 | `theorem` | [continuous_dist](../../../../../mathematics/Topology/MetricTopology/Completion/Variantedd5d601bcfdb3cb8338366a195c030d45116835a1bb579fe409a5adf07a9a83.lean/declarations/continuous-dist--adb85b50b3aa38150b9795de.md) | 46 | `result-track:adb85b50b3aa38150b9795de5b46e5521c71e275b6a50c039ff6284a0f6d9ffe` |
| 4 | `theorem` | [dist_eq](../../../../../mathematics/Topology/MetricTopology/Completion/Variantedd5d601bcfdb3cb8338366a195c030d45116835a1bb579fe409a5adf07a9a83.lean/declarations/dist-eq--9079747bc8fc28d1b5796bf2.md) | 52 | `result-track:9079747bc8fc28d1b5796bf25a5dcfe21023402fe8eed8d5511e3b848d173a90` |
| 5 | `theorem` | [dist_self](../../../../../mathematics/Topology/MetricTopology/Completion/Variantedd5d601bcfdb3cb8338366a195c030d45116835a1bb579fe409a5adf07a9a83.lean/declarations/dist-self--3d607605b1e1af3a067b2a99.md) | 57 | `result-track:3d607605b1e1af3a067b2a99174d564a50314222170b39924766e96227a0328b` |
| 6 | `theorem` | [dist_comm](../../../../../mathematics/Topology/MetricTopology/Completion/Variantedd5d601bcfdb3cb8338366a195c030d45116835a1bb579fe409a5adf07a9a83.lean/declarations/dist-comm--5de121c44c88593f501b2ec7.md) | 64 | `result-track:5de121c44c88593f501b2ec762c80084dd09fd3ef1324630db4b557c8f1cf280` |
| 7 | `theorem` | [dist_triangle](../../../../../mathematics/Topology/MetricTopology/Completion/Variantedd5d601bcfdb3cb8338366a195c030d45116835a1bb579fe409a5adf07a9a83.lean/declarations/dist-triangle--5f906d0b51bdce7e96e9e98e.md) | 71 | `result-track:5f906d0b51bdce7e96e9e98efc824a4aa613c8a01fe4f38160d57e25652a561c` |
| 8 | `theorem` | [mem_uniformity_dist](../../../../../mathematics/Topology/MetricTopology/Completion/Variantedd5d601bcfdb3cb8338366a195c030d45116835a1bb579fe409a5adf07a9a83.lean/declarations/mem-uniformity-dist--1c211e54e18a0e286a68db55.md) | 81 | `result-track:1c211e54e18a0e286a68db5548c0bda9f45c5198f3320fcf936811cede91d98c` |
| 9 | `theorem` | [uniformity_dist'](../../../../../mathematics/Topology/MetricTopology/Completion/Variantedd5d601bcfdb3cb8338366a195c030d45116835a1bb579fe409a5adf07a9a83.lean/declarations/uniformity-dist--96a544179520d20dfdc1429d.md) | 140 | `result-track:96a544179520d20dfdc1429d0580620ecfda605721f9edc5ca594f9c6fc4eb41` |
| 10 | `theorem` | [uniformity_dist](../../../../../mathematics/Topology/MetricTopology/Completion/Variantedd5d601bcfdb3cb8338366a195c030d45116835a1bb579fe409a5adf07a9a83.lean/declarations/uniformity-dist--97042545c0e3486f24ea624f.md) | 148 | `result-track:97042545c0e3486f24ea624fe2a5409bb46de539988356d64872a1ee9e4d5a3d` |
| 11 | `instance` | [instMetricSpace](../../../../../mathematics/Topology/MetricTopology/Completion/Variantedd5d601bcfdb3cb8338366a195c030d45116835a1bb579fe409a5adf07a9a83.lean/declarations/instmetricspace--c86d427cb58cbafd926442d0.md) | 152 | `declaration-track:c86d427cb58cbafd926442d0290b8a6e3f41a947f7b53e3e2e8a402028c7fdb3` |
| 12 | `theorem` | [coe_isometry](../../../../../mathematics/Topology/MetricTopology/Completion/Variantedd5d601bcfdb3cb8338366a195c030d45116835a1bb579fe409a5adf07a9a83.lean/declarations/coe-isometry--5e93c0a3f0f29368301a7d2b.md) | 162 | `result-track:5e93c0a3f0f29368301a7d2b2a065636a0abfb682300839eb871d7740abdf819` |
| 13 | `theorem` | [edist_eq](../../../../../mathematics/Topology/MetricTopology/Completion/Variantedd5d601bcfdb3cb8338366a195c030d45116835a1bb579fe409a5adf07a9a83.lean/declarations/edist-eq--861ebeb0329d46395bd799e2.md) | 166 | `result-track:861ebeb0329d46395bd799e2eee7d31f70cd4aac99195a6f2666df93d1f85172` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Completion/Variantedd5d601bcfdb3cb8338366a195c030d45116835a1bb579fe409a5adf07a9a83.lean/declarations/instance--164200d779f1dbab9292365f.md) | 169 | `declaration-track:164200d779f1dbab9292365f2e7a8119bdc7c130f9445b2778b48a30bfd5a8ce` |
| 15 | `theorem` | [LipschitzWith.completion_extension](../../../../../mathematics/Topology/MetricTopology/Completion/Variantedd5d601bcfdb3cb8338366a195c030d45116835a1bb579fe409a5adf07a9a83.lean/declarations/lipschitzwith-completion-extension--80677121aeb87e82d4fd11dd.md) | 194 | `result-track:80677121aeb87e82d4fd11dd1ec7c1265fe5e55258915d1622033f9972a1b589` |
| 16 | `theorem` | [LipschitzWith.completion_map](../../../../../mathematics/Topology/MetricTopology/Completion/Variantedd5d601bcfdb3cb8338366a195c030d45116835a1bb579fe409a5adf07a9a83.lean/declarations/lipschitzwith-completion-map--def279882f6b24a82d62f237.md) | 200 | `result-track:def279882f6b24a82d62f237f7f0ca7b729e8fdd560b9bac4036e89ef24201f9` |
| 17 | `theorem` | [Isometry.completion_extension](../../../../../mathematics/Topology/MetricTopology/Completion/Variantedd5d601bcfdb3cb8338366a195c030d45116835a1bb579fe409a5adf07a9a83.lean/declarations/isometry-completion-extension--f430682427dab0deb766e300.md) | 204 | `result-track:f430682427dab0deb766e3006e4ebe19ec0f42c7c74e75d287c279927579448e` |
| 18 | `theorem` | [Isometry.completion_map](../../../../../mathematics/Topology/MetricTopology/Completion/Variantedd5d601bcfdb3cb8338366a195c030d45116835a1bb579fe409a5adf07a9a83.lean/declarations/isometry-completion-map--e34fc026a0034696157081b2.md) | 210 | `result-track:e34fc026a0034696157081b2270189e5dd6f048bb9581a55e126711004b0b5a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
