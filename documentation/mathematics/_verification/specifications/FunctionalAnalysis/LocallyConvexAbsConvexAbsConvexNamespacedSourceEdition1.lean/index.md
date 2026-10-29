# Verification target: Locally Convex Abs Convex Abs Convex Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b5780c43f98c6468ce537e306611a96cde7a380",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/AbsConvex/Variante57eb72388ff5031e97de148844748042045cd3fb3c1da5c4b0b00879e4690e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/LocallyConvexAbsConvexAbsConvexNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../FunctionalAnalysis/LocallyConvexAbsConvexAbsConvexNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b5780c43f98c6468ce537e306611a96cde7a380`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/AbsConvex/Variante57eb72388ff5031e97de148844748042045cd3fb3c1da5c4b0b00879e4690e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/AbsConvex/Variante57eb72388ff5031e97de148844748042045cd3fb3c1da5c4b0b00879e4690e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.BalancedCoreHull` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.WithSeminorms` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Gauge` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nhds_basis_abs_convex](../../../../FunctionalAnalysis/LocallyConvexAbsConvexAbsConvexNamespacedSourceEdition1.lean/declarations/nhds-basis-abs-convex.md) | 63 | `result-track:8593541a535de404c7e6e5795b900be639760d433d31e87163624823a8af6f6a` |
| 2 | `theorem` | [nhds_basis_abs_convex_open](../../../../FunctionalAnalysis/LocallyConvexAbsConvexAbsConvexNamespacedSourceEdition1.lean/declarations/nhds-basis-abs-convex-open.md) | 76 | `result-track:79002518544089ecf8b0fc862fe02f862e760b2fbb36be97500afef7e4b8b424` |
| 3 | `def` | [AbsConvexOpenSets](../../../../FunctionalAnalysis/LocallyConvexAbsConvexAbsConvexNamespacedSourceEdition1.lean/declarations/absconvexopensets.md) | 99 | `declaration-track:2b67e22ad7d8eb3b4f8b8620bd753c5019f066cf7e98d1a507a4c9fc3befa9c1` |
| 4 | `instance` | [AbsConvexOpenSets.instCoeTC](../../../../FunctionalAnalysis/LocallyConvexAbsConvexAbsConvexNamespacedSourceEdition1.lean/declarations/absconvexopensets-instcoetc.md) | 103 | `declaration-track:9c2cdc162b59928450ec9e3930884baed9bd1e5a25689bd5f64edea4825df660` |
| 5 | `theorem` | [coe_zero_mem](../../../../FunctionalAnalysis/LocallyConvexAbsConvexAbsConvexNamespacedSourceEdition1.lean/declarations/coe-zero-mem.md) | 111 | `result-track:f0cb841e4fa896b8b26a980b3bd9e29d235e519ed152904c2f0b806ea97e7a83` |
| 6 | `theorem` | [coe_isOpen](../../../../FunctionalAnalysis/LocallyConvexAbsConvexAbsConvexNamespacedSourceEdition1.lean/declarations/coe-isopen.md) | 115 | `result-track:f8dbbf670a05846246d52a304115259342ec0b42c6cb4fc8c7f027a5d6002b81` |
| 7 | `theorem` | [coe_nhds](../../../../FunctionalAnalysis/LocallyConvexAbsConvexAbsConvexNamespacedSourceEdition1.lean/declarations/coe-nhds.md) | 119 | `result-track:cc7a62bb5b10bc70b99db709adcbe058eba502e9ecc9201aa0d261a41b3d21a4` |
| 8 | `theorem` | [coe_balanced](../../../../FunctionalAnalysis/LocallyConvexAbsConvexAbsConvexNamespacedSourceEdition1.lean/declarations/coe-balanced.md) | 123 | `result-track:66ef3d0dd2061db951bd1708ceedb3112433a3326540923a976b1d39fdcdc2c0` |
| 9 | `theorem` | [coe_convex](../../../../FunctionalAnalysis/LocallyConvexAbsConvexAbsConvexNamespacedSourceEdition1.lean/declarations/coe-convex.md) | 127 | `result-track:ac4e1c079866c04e4f17be8e333d85e0788b9f69c670147f8c92b967f611783a` |
| 10 | `instance` | [AbsConvexOpenSets.instNonempty](../../../../FunctionalAnalysis/LocallyConvexAbsConvexAbsConvexNamespacedSourceEdition1.lean/declarations/absconvexopensets-instnonempty.md) | 133 | `declaration-track:ded7245c8b35ed797a5cb2fe76110ffe9127b0ad9ea7023d7ce11858f3de5e87` |
| 11 | `def` | [gaugeSeminormFamily](../../../../FunctionalAnalysis/LocallyConvexAbsConvexAbsConvexNamespacedSourceEdition1.lean/declarations/gaugeseminormfamily.md) | 152 | `declaration-track:c4c3ab342468a9c979cacb448db66ec2f9257ebccfb57a2ebb50c89d4ac83697` |
| 12 | `theorem` | [gaugeSeminormFamily_ball](../../../../FunctionalAnalysis/LocallyConvexAbsConvexAbsConvexNamespacedSourceEdition1.lean/declarations/gaugeseminormfamily-ball.md) | 158 | `result-track:0641e4d59c737572348ec4468ac4d95feb25a2bb3fe4eaca6a70e120442dfbd9` |
| 13 | `theorem` | [with_gaugeSeminormFamily](../../../../FunctionalAnalysis/LocallyConvexAbsConvexAbsConvexNamespacedSourceEdition1.lean/declarations/with-gaugeseminormfamily.md) | 171 | `result-track:b946034fff065af6141c22a07531ea9a076c0038090c04de0bc8f5aaebbf40c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0cf43acf699f8a7a7a434d4dd90d1b51e76b17348df9417369feb8d94d88772f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/AbsConvex/Variante57eb72388ff5031e97de148844748042045cd3fb3c1da5c4b0b00879e4690e9.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/AbsConvex/Variante57eb72388ff5031e97de148844748042045cd3fb3c1da5c4b0b00879e4690e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
