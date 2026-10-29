# Verification target: GRWTSK.Algebra.PolygonalQuarticResolvent

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e40e31876da5291cc10e8dfae0f45f728d73bd2f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PolygonalQuarticResolvent.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/PolygonalQuarticResolvent.lean/index.md) · [Full source](../../../../CommutativeAlgebra/PolygonalQuarticResolvent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e40e31876da5291cc10e8dfae0f45f728d73bd2f`.

Source path: `GRWTSK/Algebra/PolygonalQuarticResolvent.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PolygonalQuarticResolvent.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quarticPairSum](../../../../CommutativeAlgebra/PolygonalQuarticResolvent.lean/declarations/quarticpairsum.md) | 27 | `declaration-track:2a3d135ff8a64363b66ca7f8ec73ec93b0beaff91066b59b47a55a35268e6eee` |
| 2 | `def` | [cycleABCD](../../../../CommutativeAlgebra/PolygonalQuarticResolvent.lean/declarations/cycleabcd.md) | 31 | `declaration-track:eb64f633250a15540587074735453b7c4fca1776ad2fab99b8949311270cf3a3` |
| 3 | `def` | [cycleACBD](../../../../CommutativeAlgebra/PolygonalQuarticResolvent.lean/declarations/cycleacbd.md) | 35 | `declaration-track:1d6457aeb95de0cfc06e246873eb182801a2d7bc334381446765c9ad91b562f1` |
| 4 | `def` | [cycleABDC](../../../../CommutativeAlgebra/PolygonalQuarticResolvent.lean/declarations/cycleabdc.md) | 39 | `declaration-track:fd5e98225c0faa50447d9a3668dcc3b22ea05f681fb9c04684300d400b4ceba6` |
| 5 | `def` | [matchAC_BD](../../../../CommutativeAlgebra/PolygonalQuarticResolvent.lean/declarations/matchac-bd.md) | 43 | `declaration-track:deffc943ef39dc059eeb63b8e34e0263635aba0fc6c315a2c950fd4c0d05b006` |
| 6 | `def` | [matchAB_CD](../../../../CommutativeAlgebra/PolygonalQuarticResolvent.lean/declarations/matchab-cd.md) | 46 | `declaration-track:1c7285d7aca041161e97d07df62b249896d27c1f97bb6596750cb76b0f0f736d` |
| 7 | `def` | [matchAD_BC](../../../../CommutativeAlgebra/PolygonalQuarticResolvent.lean/declarations/matchad-bc.md) | 49 | `declaration-track:3aa2953926b66a73655d6cf1c3a19dd6fdab8a40289dcaeed5a01343958848f6` |
| 8 | `theorem` | [cycleABCD_eq_complement](../../../../CommutativeAlgebra/PolygonalQuarticResolvent.lean/declarations/cycleabcd-eq-complement.md) | 51 | `result-track:28acd963a7cdd7f8a5708650874d83dbb1172af269d4e0558a97407b4c84b89c` |
| 9 | `theorem` | [cycleACBD_eq_complement](../../../../CommutativeAlgebra/PolygonalQuarticResolvent.lean/declarations/cycleacbd-eq-complement.md) | 57 | `result-track:bfec25d3826080fb5d40a4481dc76901fb786ab107a3bc9e69ac616cea7ca5e0` |
| 10 | `theorem` | [cycleABDC_eq_complement](../../../../CommutativeAlgebra/PolygonalQuarticResolvent.lean/declarations/cycleabdc-eq-complement.md) | 63 | `result-track:cc4bda453eb986922ccdf8fe03f2472eaf1a5807cffbe6d36cfe4e67137d0f9d` |
| 11 | `def` | [cycleCubic](../../../../CommutativeAlgebra/PolygonalQuarticResolvent.lean/declarations/cyclecubic.md) | 70 | `declaration-track:cdfce24036116152596f66778d20d8b1f09787d0ce5902800fb8c31d9998cd60` |
| 12 | `def` | [complementaryMatchingCubic](../../../../CommutativeAlgebra/PolygonalQuarticResolvent.lean/declarations/complementarymatchingcubic.md) | 76 | `declaration-track:d74a8fa38fd6df981e9a140166dd660144104576c6f0fce5d4e7836845aaa9f9` |
| 13 | `theorem` | [cycleCubic_eq_complementaryMatchingCubic](../../../../CommutativeAlgebra/PolygonalQuarticResolvent.lean/declarations/cyclecubic-eq-complementarymatchingcubic.md) | 84 | `result-track:4a707705aaba4791a59c30ff336f05904f21e5f559361c2924aaffc9178602df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f86a98b9e9ec50f38ecc705387e4e6b6ff3cb796b7a0e5732a42c2d645d4a8d5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/PolygonalQuarticResolvent.lean","GRWTSK/_verification/specifications/Algebra/PolygonalQuarticResolvent.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
