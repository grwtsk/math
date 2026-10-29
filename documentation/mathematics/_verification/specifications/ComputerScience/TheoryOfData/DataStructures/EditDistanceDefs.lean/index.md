# Verification target: Edit Distance Defs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9984a0f6aa7d56d25fc7d7b827d744341dd8091",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Varianta5f29876cfff09529281277ae2ee6d177044c96d45c068195c00e309947381f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefs.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9984a0f6aa7d56d25fc7d7b827d744341dd8091`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Varianta5f29876cfff09529281277ae2ee6d177044c96d45c068195c00e309947381f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Varianta5f29876cfff09529281277ae2ee6d177044c96d45c068195c00e309947381f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Cost](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefs.lean/declarations/cost.md) | 45 | `declaration-track:c8d4770e66d61cf8a2f08e0fd9e50c6d58c14b8d108b49fef5eeb8a7282510f8` |
| 2 | `def` | [defaultCost](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefs.lean/declarations/defaultcost.md) | 55 | `declaration-track:d4d693cf5df3122d1f2dcdbbb2982958f8a498a4dad3056dfe588b964b8cd7c6` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefs.lean/declarations/instance.md) | 60 | `declaration-track:0a47e66e537529f7dc2d0fe4a387417ec1e3cb228465929d76b3a2c7a6d364be` |
| 4 | `def` | [impl](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefs.lean/declarations/impl.md) | 76 | `declaration-track:9b7272ee138b403c2bd8096abd5e735310ec371f7bbafd2cc43f3ed25661a874` |
| 5 | `theorem` | [impl_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefs.lean/declarations/impl-cons.md) | 89 | `result-track:c13d58a41a02b576ecaa93964bd142d71fef621e3335df75c2d7515bcb5ace80` |
| 6 | `theorem` | [impl_cons_fst_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefs.lean/declarations/impl-cons-fst-zero.md) | 97 | `result-track:503e096ef1780be0c59a09bcdb926da1aa19712c03e2f94ad2a7b949a362f3ae` |
| 7 | `theorem` | [impl_length](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefs.lean/declarations/impl-length.md) | 103 | `result-track:19c0e0a7062c3bb7f6a0c885fac6c2f99fb6a74fc2570ea1230aba01a2eda76f` |
| 8 | `def` | [suffixLevenshtein](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefs.lean/declarations/suffixlevenshtein.md) | 136 | `declaration-track:1f17a33c42cc766391946befb59573cb93277f9e393accc97c5d39799311f2fb` |
| 9 | `theorem` | [suffixLevenshtein_length](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefs.lean/declarations/suffixlevenshtein-length.md) | 143 | `result-track:f3cf5e5088ee74bddab740e34c9d5dc0b1b029a9df73c9258e70295bfafac571` |
| 10 | `theorem` | [suffixLevenshtein_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefs.lean/declarations/suffixlevenshtein-eq.md) | 158 | `result-track:c94bba71a10f96cbb00c8efd5fff386e2f98f5aa071060eba88c111249c45050` |
| 11 | `def` | [levenshtein](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefs.lean/declarations/levenshtein.md) | 176 | `declaration-track:c3bede3a91458b2ba5836aae0d911e2898686976a3a4c954c22bc3fac2be42cc` |
| 12 | `theorem` | [suffixLevenshtein_nil_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefs.lean/declarations/suffixlevenshtein-nil-nil.md) | 182 | `result-track:6e2d700be151d54e2ec016d87f386929d4fd40ca59b6cde683d5ff6e4a2403ae` |
| 13 | `theorem` | [List.eq_of_length_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefs.lean/declarations/list-eq-of-length-one.md) | 186 | `result-track:03c72d4a71ae0e86059eb2ba3d239cd07a10c0c175792137e366a934b970f567` |
| 14 | `theorem` | [suffixLevenshtein_nil'](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefs.lean/declarations/suffixlevenshtein-nil.md) | 192 | `result-track:1a23835212e7414051703417cff01732ad86555c85337159cfe297089feeab3f` |
| 15 | `theorem` | [suffixLevenshtein_cons₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefs.lean/declarations/suffixlevenshtein-cons.md) | 196 | `result-track:7280ed81b6dd2ecc52e428de7e2f4b673c9930e54550d3ce2650870d8f360ab9` |
| 16 | `theorem` | [suffixLevenshtein_cons₁_aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefs.lean/declarations/suffixlevenshtein-cons-aux.md) | 200 | `result-track:6451f79175b96c59094a5ef78ba000bb82467918b71869e1a5239dd47c751bb3` |
| 17 | `theorem` | [suffixLevenshtein_cons₁](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefs.lean/declarations/suffixlevenshtein-cons-source-edition-2.md) | 205 | `result-track:c67887b257b77286b9e63e0d343ca1268ac2fde8cfaa59fb600edfafdd8457ac` |
| 18 | `theorem` | [suffixLevenshtein_cons₁_fst](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefs.lean/declarations/suffixlevenshtein-cons-fst.md) | 220 | `result-track:4def0fc8228bba43bf2effe02efa3d2c9141299457d1fb3b249a6ce640119fe8` |
| 19 | `theorem` | [suffixLevenshtein_cons_cons_fst_get_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefs.lean/declarations/suffixlevenshtein-cons-cons-fst-get-zero.md) | 226 | `result-track:02c2c4b6106814a2bba78e4229178f757bb8719a65486297a138e5f42885691d` |
| 20 | `theorem` | [suffixLevenshtein_eq_tails_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefs.lean/declarations/suffixlevenshtein-eq-tails-map.md) | 244 | `result-track:f47acff0bafad99ac595b99a70aa15fb23cb70105f22022b9e077096343a0951` |
| 21 | `theorem` | [levenshtein_nil_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefs.lean/declarations/levenshtein-nil-nil.md) | 253 | `result-track:c2e82caad294e5c248c35d140068ddfc0ff3cc7edc00973adc3e038de129ce8a` |
| 22 | `theorem` | [levenshtein_nil_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefs.lean/declarations/levenshtein-nil-cons.md) | 257 | `result-track:cb2c127bebb99d8b97fbd76a9ecc2f4d91e97e8ac4c4219f423ef5da7095d15b` |
| 23 | `theorem` | [levenshtein_cons_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefs.lean/declarations/levenshtein-cons-nil.md) | 271 | `result-track:286181d0f58cb3e5fd9d9e32c62daf3fcfd2f3852695d5fc20fe3f54ca016047` |
| 24 | `theorem` | [levenshtein_cons_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefs.lean/declarations/levenshtein-cons-cons.md) | 276 | `result-track:4bcca36f197b01a8c6ad61e32719601e3377d0789daed01570b7c718c7e1504e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cc958048fb1ec058c549d5cacf5a2abc18f3e4dddb653d56e9b32ec7fac53bfe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Varianta5f29876cfff09529281277ae2ee6d177044c96d45c068195c00e309947381f7.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Varianta5f29876cfff09529281277ae2ee6d177044c96d45c068195c00e309947381f7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
