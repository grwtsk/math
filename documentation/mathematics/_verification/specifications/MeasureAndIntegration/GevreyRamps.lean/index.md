# Verification target: Gevrey Ramps

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b826885dbe6402f5cf219920a1667afaffb4f06",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Variantb85963523982a2be0edbcf12772c81efc10312f9345d04fb07b62f905c1a8f58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/GevreyRamps.lean/index.md) · [Full source](../../../../MeasureAndIntegration/GevreyRamps.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b826885dbe6402f5cf219920a1667afaffb4f06`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Variantb85963523982a2be0edbcf12772c81efc10312f9345d04fb07b62f905c1a8f58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Variantb85963523982a2be0edbcf12772c81efc10312f9345d04fb07b62f905c1a8f58.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Taper.Gevrey` — import line 16; external provider; requires a separately pinned dependency.
- `Zeta23.Taper.GevreyPhi` — import line 17; external provider; requires a separately pinned dependency.
- `Zeta23.Taper` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [GevreyProfile.iteratedDeriv_eq_zero](../../../../MeasureAndIntegration/GevreyRamps.lean/declarations/gevreyprofile-iteratedderiv-eq-zero.md) | 30 | `result-track:56474fd951e86b69e20559e17e466576e540e71b41ea29382c446259439e28e9` |
| 2 | `lemma` | [GevreyProfile.abs_iteratedDeriv_le_indicator](../../../../MeasureAndIntegration/GevreyRamps.lean/declarations/gevreyprofile-abs-iteratedderiv-le-indicator.md) | 59 | `result-track:56cfe58e98e22983643921d40ec6c5c27cd4250c33ac58e83c9015b64300ba54` |
| 3 | `lemma` | [iteratedDeriv_ofReal_comp](../../../../MeasureAndIntegration/GevreyRamps.lean/declarations/iteratedderiv-ofreal-comp.md) | 67 | `result-track:c56bd0383c420fb721d1a19ca8161e2f960abfc045c9e644a69597187785f188` |
| 4 | `def` | [fP](../../../../MeasureAndIntegration/GevreyRamps.lean/declarations/fp.md) | 79 | `declaration-track:1fc3c9e8c3453f51315a9f8d8d44df8dc57affb71c29b6e8a8776ea5eb99b3c7` |
| 5 | `def` | [fM](../../../../MeasureAndIntegration/GevreyRamps.lean/declarations/fm.md) | 80 | `declaration-track:6ff6809b402656e0f3b06ef2938e1c7dcd6b9ebdf029ea1506567fefd52381c0` |
| 6 | `lemma` | [fP_eq](../../../../MeasureAndIntegration/GevreyRamps.lean/declarations/fp-eq.md) | 82 | `result-track:2ef5d1d0f2124394f65145aa3d2077009ccc6e20098613aa869b0404a9151f0e` |
| 7 | `lemma` | [fM_eq](../../../../MeasureAndIntegration/GevreyRamps.lean/declarations/fm-eq.md) | 86 | `result-track:a40b62eaae2d8484c781a84bb352a29c179b60f12d9d8d32bdac1ac6b3b0b270` |
| 8 | `lemma` | [fP_contDiff](../../../../MeasureAndIntegration/GevreyRamps.lean/declarations/fp-contdiff.md) | 90 | `result-track:2c9d1f5e0726a6ad143f3369b67c4372b2670bee95e28a3015852acd9537d278` |
| 9 | `lemma` | [fM_contDiff](../../../../MeasureAndIntegration/GevreyRamps.lean/declarations/fm-contdiff.md) | 94 | `result-track:e5582c8b76e9681f0d454b21c26c79071d1d6d1fb26061ec93197f950c90ffb9` |
| 10 | `lemma` | [iteratedDeriv_fP](../../../../MeasureAndIntegration/GevreyRamps.lean/declarations/iteratedderiv-fp.md) | 98 | `result-track:2ddb9f4839eae9b3342e32eceef8bb99417356ef6ae5dfd2e1eb4a4842d242f3` |
| 11 | `lemma` | [iteratedDeriv_fM](../../../../MeasureAndIntegration/GevreyRamps.lean/declarations/iteratedderiv-fm.md) | 105 | `result-track:0e96bf7b5234a652fab1f7479783db19f58a83aebfea55558282fb88a4b2c253` |
| 12 | `lemma` | [abs_iteratedDeriv_fP_le](../../../../MeasureAndIntegration/GevreyRamps.lean/declarations/abs-iteratedderiv-fp-le.md) | 113 | `result-track:da634aab4afc748a0b8b32ad50d5347e684100f578873333eabb03c16d387235` |
| 13 | `lemma` | [abs_iteratedDeriv_fM_le](../../../../MeasureAndIntegration/GevreyRamps.lean/declarations/abs-iteratedderiv-fm-le.md) | 131 | `result-track:e5b9912cfc6b9d4717c1532ab09b5013f1a10bcb87fd19069c87104ff538ee58` |
| 14 | `lemma` | [iteratedDeriv_fP_mul_fM_eq_zero](../../../../MeasureAndIntegration/GevreyRamps.lean/declarations/iteratedderiv-fp-mul-fm-eq-zero.md) | 150 | `result-track:61a695d287ed8dbc129af61c7b926e4f80c3f43ee85d1a9783eef0745ee815aa` |
| 15 | `lemma` | [abs_iteratedDeriv_phi_le](../../../../MeasureAndIntegration/GevreyRamps.lean/declarations/abs-iteratedderiv-phi-le.md) | 168 | `result-track:0ef38470b583ff557fe94982d94afe339781f2f981500ff474a2836649993f53` |
| 16 | `theorem` | [integral_abs_iteratedDeriv_phi_le](../../../../MeasureAndIntegration/GevreyRamps.lean/declarations/integral-abs-iteratedderiv-phi-le.md) | 203 | `result-track:44ddbc283f0eec2ac6c131b5644a6fb40b173093c1c66ed0928e3c184c4ac900` |
| 17 | `theorem` | [Params.gevreyPhiBound_of_profile](../../../../MeasureAndIntegration/GevreyRamps.lean/declarations/params-gevreyphibound-of-profile.md) | 237 | `result-track:fb0024d2bc992cf336c76d771c3b1c2a48b492377bc630a1035a78fdbb68ea9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=594d9191f3f4b10af06276477fcb5773db1d9124b02b2e7dfc38805e8a920055 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Variantb85963523982a2be0edbcf12772c81efc10312f9345d04fb07b62f905c1a8f58.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Variantb85963523982a2be0edbcf12772c81efc10312f9345d04fb07b62f905c1a8f58.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
