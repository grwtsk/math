# Verification target: GRWTSK.Topology.GeneralTopology.UnnormalizedDilationAttempt01.Variantf6b4533e201cfec896edbc3302e9140ebe235b0bc801098f0e10b68785028e02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7960f32047be940ebcd1ce2276753faa837b0472",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UnnormalizedDilationAttempt01/Variantf6b4533e201cfec896edbc3302e9140ebe235b0bc801098f0e10b68785028e02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt01/Variantf6b4533e201cfec896edbc3302e9140ebe235b0bc801098f0e10b68785028e02.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt01/Variantf6b4533e201cfec896edbc3302e9140ebe235b0bc801098f0e10b68785028e02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7960f32047be940ebcd1ce2276753faa837b0472`.

Source path: `GRWTSK/Topology/GeneralTopology/UnnormalizedDilationAttempt01/Variantf6b4533e201cfec896edbc3302e9140ebe235b0bc801098f0e10b68785028e02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UnnormalizedDilationAttempt01/Variantf6b4533e201cfec896edbc3302e9140ebe235b0bc801098f0e10b68785028e02.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualComplexDilation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.ClosedSubmodule` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unnormalizedFunc](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt01/Variantf6b4533e201cfec896edbc3302e9140ebe235b0bc801098f0e10b68785028e02.lean/declarations/unnormalizedfunc--9c56b76f93390e2b6fe82c09.md) | 21 | `declaration-track:9c56b76f93390e2b6fe82c09266b51d694ece50fcc0b336b2030e88b7d2c4b72` |
| 2 | `theorem` | [unnormalizedFunc_memLp](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt01/Variantf6b4533e201cfec896edbc3302e9140ebe235b0bc801098f0e10b68785028e02.lean/declarations/unnormalizedfunc-memlp--8439ba687ff1a482c5597973.md) | 23 | `result-track:8439ba687ff1a482c55979733b934d11eb1006ab538d6d6cafbea073660c4188` |
| 3 | `def` | [unnormalized](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt01/Variantf6b4533e201cfec896edbc3302e9140ebe235b0bc801098f0e10b68785028e02.lean/declarations/unnormalized--ce49e57368be44ab7863a0b2.md) | 30 | `declaration-track:ce49e57368be44ab7863a0b23e6ea69db05665880d93815da338d85a17d953d1` |
| 4 | `theorem` | [unnormalized_ae](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt01/Variantf6b4533e201cfec896edbc3302e9140ebe235b0bc801098f0e10b68785028e02.lean/declarations/unnormalized-ae--134e552655fd5aa7e24727dc.md) | 33 | `result-track:134e552655fd5aa7e24727dcebe59dd9d28a11d417b632a3bb82ac42ce630e03` |
| 5 | `theorem` | [dilate_eq_sqrt_smul](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt01/Variantf6b4533e201cfec896edbc3302e9140ebe235b0bc801098f0e10b68785028e02.lean/declarations/dilate-eq-sqrt-smul--f643b7997afba3dd1945865b.md) | 37 | `result-track:f643b7997afba3dd1945865b633b374a90f329412f0f26c004e350c66b2c1e6c` |
| 6 | `theorem` | [unnormalized_eq_inv_sqrt_smul](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt01/Variantf6b4533e201cfec896edbc3302e9140ebe235b0bc801098f0e10b68785028e02.lean/declarations/unnormalized-eq-inv-sqrt-smul--ebd37612475cd802fc2797de.md) | 45 | `result-track:ebd37612475cd802fc2797de988eb9a664f04bdb285e982f5e47c61df20aa970` |
| 7 | `theorem` | [unnormalized_norm](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt01/Variantf6b4533e201cfec896edbc3302e9140ebe235b0bc801098f0e10b68785028e02.lean/declarations/unnormalized-norm--6c9608d38b7a71caec74553e.md) | 50 | `result-track:6c9608d38b7a71caec74553ef83f1661871ce0fb0939f28026ade86642e12173` |
| 8 | `theorem` | [span_range_eq](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt01/Variantf6b4533e201cfec896edbc3302e9140ebe235b0bc801098f0e10b68785028e02.lean/declarations/span-range-eq--d590e3c89c9db9320b7471e3.md) | 55 | `result-track:d590e3c89c9db9320b7471e336d1eb5e44b48633d35c60f3ebeb1489dabeae29` |
| 9 | `theorem` | [closure_span_range_eq](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt01/Variantf6b4533e201cfec896edbc3302e9140ebe235b0bc801098f0e10b68785028e02.lean/declarations/closure-span-range-eq--7baf2c484eaa81fff858f6dc.md) | 68 | `result-track:7baf2c484eaa81fff858f6dcec6472170a20bd39869bcb6660d4c082c78f4be9` |
| 10 | `def` | [actualIntegerOrbit](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt01/Variantf6b4533e201cfec896edbc3302e9140ebe235b0bc801098f0e10b68785028e02.lean/declarations/actualintegerorbit--ea2373e9584f000682f5a1fd.md) | 73 | `declaration-track:ea2373e9584f000682f5a1fd25b9a3b37f3155add96b9d55c9793791447948ee` |
| 11 | `theorem` | [actualIntegerOrbit_ae](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt01/Variantf6b4533e201cfec896edbc3302e9140ebe235b0bc801098f0e10b68785028e02.lean/declarations/actualintegerorbit-ae--c608c9af7b5807bbb4ae599d.md) | 76 | `result-track:c608c9af7b5807bbb4ae599d863bbb5b43fc7602834d02cc43117af4ccdbbfcd` |
| 12 | `theorem` | [actual_integer_span_eq](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt01/Variantf6b4533e201cfec896edbc3302e9140ebe235b0bc801098f0e10b68785028e02.lean/declarations/actual-integer-span-eq--56900ff037895474d588af8b.md) | 85 | `result-track:56900ff037895474d588af8be9795251afd96900c41bbfc3a68cf1c2662e9184` |
| 13 | `theorem` | [actual_integer_closure_eq](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt01/Variantf6b4533e201cfec896edbc3302e9140ebe235b0bc801098f0e10b68785028e02.lean/declarations/actual-integer-closure-eq--5c558ce1ddd2999044b729cc.md) | 91 | `result-track:5c558ce1ddd2999044b729cc8591975ccdce6d5edec80f33f1d7ff9bad8989e7` |
| 14 | `theorem` | [actual_continuous_closure_eq](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt01/Variantf6b4533e201cfec896edbc3302e9140ebe235b0bc801098f0e10b68785028e02.lean/declarations/actual-continuous-closure-eq--d18a5706aa315647711b6ad0.md) | 96 | `result-track:d18a5706aa315647711b6ad0659bd272c8e14d0a9765fe4d61c19cd9864aebef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
