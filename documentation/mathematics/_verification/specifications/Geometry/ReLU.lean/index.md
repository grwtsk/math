# Verification target: Re LU

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c39feccad70d53e3f42359df6c9fa7d5771bb6fc",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Geometry/ReLU.lean/index.md) · [Full source](../../../../Geometry/ReLU.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c39feccad70d53e3f42359df6c9fa7d5771bb6fc`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.IntervalDyadic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LinearBound](../../../../Geometry/ReLU.lean/declarations/linearbound.md) | 48 | `declaration-track:ed8a0093af37a0e7d1ab8f58ba038f05c275cce9efb4be560d2cfdf759af4bf5` |
| 2 | `def` | [LinearBound.eval](../../../../Geometry/ReLU.lean/declarations/linearbound-eval.md) | 54 | `declaration-track:e766fed456c6c7b92dc16cba7188802330fed36b5f592c47981a8e51913186ca` |
| 3 | `def` | [crossingUpperBound](../../../../Geometry/ReLU.lean/declarations/crossingupperbound.md) | 61 | `declaration-track:0328894ca9ee89feb171cb4ac2b9d821042d33d45391f92bc24ccc00f0861505` |
| 4 | `theorem` | [crossingUpperBound_eval](../../../../Geometry/ReLU.lean/declarations/crossingupperbound-eval.md) | 67 | `result-track:e0bbd126c26fca26d5163c3ccbaa1260953c14b9ff1e7fbd02f138ee2a06fdd9` |
| 5 | `theorem` | [upper_bound_valid](../../../../Geometry/ReLU.lean/declarations/upper-bound-valid.md) | 83 | `result-track:df7674120893f9a0f70738f6b734e5db1cd1a968292485b66eade88e3c3dc7ca` |
| 6 | `structure` | [SymbolicBound](../../../../Geometry/ReLU.lean/declarations/symbolicbound.md) | 124 | `declaration-track:013f3fbf872521e90c1c6e08dc70fac896cc70c9aa67fbf4a2db182b1cce6d5a` |
| 7 | `def` | [getReLURelaxation](../../../../Geometry/ReLU.lean/declarations/getrelurelaxation.md) | 132 | `declaration-track:e0da04a1da84596ead8a26afe4bb6dab1c1caec25ec8b7bb4ae1135c68d0e695` |
| 8 | `theorem` | [lower_bound_crossing](../../../../Geometry/ReLU.lean/declarations/lower-bound-crossing.md) | 147 | `result-track:131ce2f7bdcd1d666c7a2b14764bc63e686c3f572e309424187b1cfc7ae68a3f` |
| 9 | `theorem` | [relu_relaxation_sound](../../../../Geometry/ReLU.lean/declarations/relu-relaxation-sound.md) | 156 | `result-track:7dcd2631204cd73f1582b62290dd63910d24ebdc4b33930eb074456a4f79d58f` |
| 10 | `def` | [LinearBound.identity](../../../../Geometry/ReLU.lean/declarations/linearbound-identity.md) | 191 | `declaration-track:207f675d15b6e53549bea5dee9a72c40636cbe4149859016598623ece568f548` |
| 11 | `def` | [LinearBound.zero](../../../../Geometry/ReLU.lean/declarations/linearbound-zero.md) | 194 | `declaration-track:68e8c7827493e059d659e9fd942c5e190312b653c49232f5a6b7d656bcd71efc` |
| 12 | `theorem` | [LinearBound.eval_identity](../../../../Geometry/ReLU.lean/declarations/linearbound-eval-identity.md) | 197 | `result-track:f6b18fcb97925d16b17216d204d9fd90fdc36a4ab95a098d4a7ac0cbd5bc5aa1` |
| 13 | `theorem` | [LinearBound.eval_zero](../../../../Geometry/ReLU.lean/declarations/linearbound-eval-zero.md) | 201 | `result-track:912aa2791206ed5438762ded75b6164099af345ea8957d1a7eb5d4b9afc69a50` |
| 14 | `def` | [LinearBound.compose](../../../../Geometry/ReLU.lean/declarations/linearbound-compose.md) | 205 | `declaration-track:d9c3373b37bd5ef1ff4857385a37687d64b5319843f9efc3ae0b2d2e61349626` |
| 15 | `theorem` | [LinearBound.eval_compose](../../../../Geometry/ReLU.lean/declarations/linearbound-eval-compose.md) | 209 | `result-track:41985f18cdf452790e7ffde311dcd1882bc629c8cc499b04e00b6e88e795e303` |
| 16 | `def` | [outputWidth](../../../../Geometry/ReLU.lean/declarations/outputwidth.md) | 219 | `declaration-track:49106769eee22b395ebbeb3782f477f4cadc8d7c3f5b7e344f15e34e9cda9f97` |
| 17 | `theorem` | [crossingUpperBound_at_u](../../../../Geometry/ReLU.lean/declarations/crossingupperbound-at-u.md) | 225 | `result-track:c361d661f7f7e0ea8a0bc2fd8c0d80854c06136d9636cf6988ddbf963da1f2c7` |
| 18 | `theorem` | [crossingUpperBound_at_l](../../../../Geometry/ReLU.lean/declarations/crossingupperbound-at-l.md) | 233 | `result-track:25f939766c01e5beb2b4e746ce2a2689b02bf5561a983de329573a46d393e06e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d0e223bd92541aebd9b47ab254d6e8906f0d18270adaaae42157d791c41cd56 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
