# Verification target: List Fin Range Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75c70bb7d06552c0d80901fb1631df0da75b5408",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant0ab1d69d21de00d45087f2d2ab66abef1851f8205d7cf7bc2b74de416447029f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListFinRangeNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListFinRangeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75c70bb7d06552c0d80901fb1631df0da75b5408`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant0ab1d69d21de00d45087f2d2ab66abef1851f8205d7cf7bc2b74de416447029f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant0ab1d69d21de00d45087f2d2ab66abef1851f8205d7cf7bc2b74de416447029f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.OfFn` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Perm` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_coe_finRange](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListFinRangeNamespaced.lean/declarations/map-coe-finrange.md) | 33 | `result-track:e480ae38841decf08e6b7eed231ad61dd6043e05d14665a7f968bef17ab21a44` |
| 2 | `theorem` | [finRange_succ_eq_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListFinRangeNamespaced.lean/declarations/finrange-succ-eq-map.md) | 38 | `result-track:c7983da5c4dd10220c967b5a57a9cdfcde12fb3aade8d8d99f369eb4831b7a2f` |
| 3 | `theorem` | [ofFn_eq_pmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListFinRangeNamespaced.lean/declarations/offn-eq-pmap.md) | 47 | `result-track:7e33bc4cd1a3308aeb87f22955e6e89aeb6bc4cb18466dc5ed78c808c63ce067` |
| 4 | `theorem` | [ofFn_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListFinRangeNamespaced.lean/declarations/offn-id.md) | 53 | `result-track:a1452670610d1537a74dfc8a195cbc6ebd8d5e5e0c0c9e8bff013c93af6a36fe` |
| 5 | `theorem` | [ofFn_eq_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListFinRangeNamespaced.lean/declarations/offn-eq-map.md) | 57 | `result-track:51b86be5f2231538f41c6cce8901888ab2b05a77727317a6fa5091407307f5cf` |
| 6 | `theorem` | [nodup_ofFn_ofInjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListFinRangeNamespaced.lean/declarations/nodup-offn-ofinjective.md) | 61 | `result-track:fcb04c7283f1bcb183e1d5a9c5612c67acb3ed9203ddc3958de471605767f273` |
| 7 | `theorem` | [nodup_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListFinRangeNamespaced.lean/declarations/nodup-offn.md) | 67 | `result-track:9dd091731090d3f202bf202230f20015f123220d7fcda60069dcbf768cdf7daf` |
| 8 | `theorem` | [Equiv.Perm.map_finRange_perm](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListFinRangeNamespaced.lean/declarations/equiv-perm-map-finrange-perm.md) | 82 | `result-track:ed3948485c9106d2a8700f30eb4822f8eb565fa4552c2575160a84e7e3bd1475` |
| 9 | `theorem` | [Equiv.Perm.ofFn_comp_perm](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListFinRangeNamespaced.lean/declarations/equiv-perm-offn-comp-perm.md) | 90 | `result-track:7e167a19ba8871554cd1bff61eef93dceac56d7f7fa4975026520f09e9d5ef32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=07bff4e429e5d504a278b3590fad2505855af20c7441db38bdfff49bf7bf3f82 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant0ab1d69d21de00d45087f2d2ab66abef1851f8205d7cf7bc2b74de416447029f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant0ab1d69d21de00d45087f2d2ab66abef1851f8205d7cf7bc2b74de416447029f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
