# Verification target: Basic Basic Namespaced Cut Digest

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3693d917d5395638f42642f1830eff5137bb190a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Basic/Variant4cc67d6aa15ba2c6980d1528071df212e514a94e215436eb6effb03f05252e5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/BasicBasicNamespacedCutDigest.lean/index.md) · [Full source](../../../../RealFunctions/BasicBasicNamespacedCutDigest.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3693d917d5395638f42642f1830eff5137bb190a`.

Source path: `GRWTSK/Analysis/Basic/Variant4cc67d6aa15ba2c6980d1528071df212e514a94e215436eb6effb03f05252e5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Basic/Variant4cc67d6aa15ba2c6980d1528071df212e514a94e215436eb6effb03f05252e5f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Card` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CutDigest](../../../../RealFunctions/BasicBasicNamespacedCutDigest.lean/declarations/cutdigest.md) | 21 | `declaration-track:3491aa3009b877cfff5d14d860f04412013b2b026ce8c603a4f35e9074dd8487` |
| 2 | `structure` | [CellDigest](../../../../RealFunctions/BasicBasicNamespacedCutDigest.lean/declarations/celldigest.md) | 25 | `declaration-track:e39bb46920bc85f814c59414361f951fc6853c28d15a68cea8e70f7c06ecda33` |
| 3 | `structure` | [CertificateDigest](../../../../RealFunctions/BasicBasicNamespacedCutDigest.lean/declarations/certificatedigest.md) | 29 | `declaration-track:e33f108b6ff7570920a33498c45e2a538d7eb793194257c9c57f676efefb23d5` |
| 4 | `structure` | [AnalyticCellId](../../../../RealFunctions/BasicBasicNamespacedCutDigest.lean/declarations/analyticcellid.md) | 33 | `declaration-track:19bdc2aa5cf8a261cefe052862c17e5379c6c2fcb8ad6dc71cf41a75969880b7` |
| 5 | `structure` | [RefinementId](../../../../RealFunctions/BasicBasicNamespacedCutDigest.lean/declarations/refinementid.md) | 37 | `declaration-track:c34f1d0863df188c48a45e98545c4f77c16787ebb726364059439bf83a6427c5` |
| 6 | `structure` | [ZeroLineageId](../../../../RealFunctions/BasicBasicNamespacedCutDigest.lean/declarations/zerolineageid.md) | 41 | `declaration-track:a97cc58a1f6b5287be062f6d3cb10bb678dec97677edb1fd42b7554dbc1807c6` |
| 7 | `structure` | [SpectralCutId](../../../../RealFunctions/BasicBasicNamespacedCutDigest.lean/declarations/spectralcutid.md) | 45 | `declaration-track:c5c783143865862cb94c84af87db4f54bb085904416a7729e3ec17ad382daf64` |
| 8 | `structure` | [SpectralCandidateId](../../../../RealFunctions/BasicBasicNamespacedCutDigest.lean/declarations/spectralcandidateid.md) | 49 | `declaration-track:26daff2521b216b753df761a246ba78311722f157f4db6bb85952cfe8c71461c` |
| 9 | `structure` | [AssumptionId](../../../../RealFunctions/BasicBasicNamespacedCutDigest.lean/declarations/assumptionid.md) | 53 | `declaration-track:e544873785eaef691a04547bed82a89c5deb9b4a90a46acc0b89a6359dab180a` |
| 10 | `structure` | [PriorityKey](../../../../RealFunctions/BasicBasicNamespacedCutDigest.lean/declarations/prioritykey.md) | 57 | `declaration-track:2298781b6e7bdb5e81d046cead137720c2a022e3ea74900e1d4355ce72b27bae` |
| 11 | `structure` | [RealInterval](../../../../RealFunctions/BasicBasicNamespacedCutDigest.lean/declarations/realinterval.md) | 62 | `declaration-track:c3f9d6aa49d130b5fd67db6a3ede55afc3812356625c831da4ebf83ee68f02e0` |
| 12 | `def` | [RealInterval.Contains](../../../../RealFunctions/BasicBasicNamespacedCutDigest.lean/declarations/realinterval-contains.md) | 67 | `declaration-track:acb19682a955c2c22b52c4f3a9f354d800b77b2454774eb13ea032bfda33e503` |
| 13 | `structure` | [ComplexInterval](../../../../RealFunctions/BasicBasicNamespacedCutDigest.lean/declarations/complexinterval.md) | 72 | `declaration-track:6cdefbfe8ac30beaf82cdd97d6e79cd124eb8ec7e0150c2bf17ec39fdf103909` |
| 14 | `def` | [ComplexInterval.Contains](../../../../RealFunctions/BasicBasicNamespacedCutDigest.lean/declarations/complexinterval-contains.md) | 75 | `declaration-track:8f6afd1270a20fa7f79679a5eb0565854905eb13f9e511b39ec54eed59cf2aeb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=925b2caab546a5ac8467b6aa1592cd6cf3678c88ffe30a99287098c8d46cffeb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Basic/Variant4cc67d6aa15ba2c6980d1528071df212e514a94e215436eb6effb03f05252e5f.lean","GRWTSK/_verification/specifications/Analysis/Basic/Variant4cc67d6aa15ba2c6980d1528071df212e514a94e215436eb6effb03f05252e5f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
