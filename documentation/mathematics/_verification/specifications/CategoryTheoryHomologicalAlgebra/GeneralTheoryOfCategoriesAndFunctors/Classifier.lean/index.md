# Verification target: Classifier

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02b938723665cc8281c53000424d702d7504b8d9",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Classifier/Varianta21cb60cea826048af2e3ba3dc683a6e00ff1f042a7d61751bb124e2740bb663.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Classifier.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Classifier.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02b938723665cc8281c53000424d702d7504b8d9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Classifier/Varianta21cb60cea826048af2e3ba3dc683a6e00ff1f042a7d61751bb124e2740bb663.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Classifier/Varianta21cb60cea826048af2e3ba3dc683a6e00ff1f042a7d61751bb124e2740bb663.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.RegularMono` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.ReflectsIso.Balanced` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subobject.Presheaf` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Classifier](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Classifier.lean/declarations/classifier.md) | 80 | `declaration-track:0c970843785e4c6178ca3f2cde1cfb6f682442352b0dc4738f56305bfb46812e` |
| 2 | `class` | [HasClassifier](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Classifier.lean/declarations/hasclassifier.md) | 95 | `declaration-track:5fd79d146ae9090bb65e09781095192f72bc7c0120ff37a5ca313cc0bdac803b` |
| 3 | `abbrev` | [Ω](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Classifier.lean/declarations/anonymous-source-edition-5.md) | 106 | `declaration-track:d9a861fd70177d6555dcca6bba604353f8bbea186bd47adfc36f59e81cca623b` |
| 4 | `abbrev` | [truth](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Classifier.lean/declarations/truth.md) | 109 | `declaration-track:c20c4342844258278d63119876b8bfd98310dc435150b3d73ee9ca1509218645` |
| 5 | `def` | [χ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Classifier.lean/declarations/anonymous-source-edition-3.md) | 115 | `declaration-track:9057180a7b1d0869efc160a5bd77084a217b6400ba924cd5af9b1a4b2c4e4235` |
| 6 | `lemma` | [isPullback_χ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Classifier.lean/declarations/ispullback-source-edition-2.md) | 129 | `result-track:915094b1cefd194ea62a4a14f0c73f1ef39cc2bb53122c5670511057db7570a8` |
| 7 | `lemma` | [comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Classifier.lean/declarations/comm.md) | 144 | `result-track:fba5ba39abf7b1d76ae28d1502da1554103383357e68e3f933dbb89a446e380f` |
| 8 | `lemma` | [unique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Classifier.lean/declarations/unique.md) | 149 | `result-track:fc5a62eb917f44d566c6436548f775c6bba9bec1a439e694ad7baee00612dc58` |
| 9 | `instance` | [truthIsRegularMono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Classifier.lean/declarations/truthisregularmono.md) | 153 | `declaration-track:77d6df370e5fc2fba36b5672937f7c14eb1953c8b64aca6b299c22609c48f99b` |
| 10 | `instance` | [isRegularMonoCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Classifier.lean/declarations/isregularmonocategory.md) | 171 | `declaration-track:a07456cee19d2765bde496e530c480f2a9036ba817cd100faab673fb0233e03e` |
| 11 | `instance` | [reflectsIsomorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Classifier.lean/declarations/reflectsisomorphisms.md) | 178 | `declaration-track:3fdc4ce65ede33ccad72bc3235f1eebd5d65a2c44a95681dd69fc4acba43cc96` |
| 12 | `instance` | [reflectsIsomorphismsOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Classifier.lean/declarations/reflectsisomorphismsop.md) | 185 | `declaration-track:d95447f4b0d7bd3f7640f7ddcee781f604dddf5815fed96262bdc958e2fc06d3` |
| 13 | `lemma` | [surjective_χ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Classifier.lean/declarations/surjective.md) | 207 | `result-track:3223710d9515311210e33eef13f79688119f1a02f417b0ab47c5aa5590b00571` |
| 14 | `lemma` | [pullback_χ_obj_mk_truth](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Classifier.lean/declarations/pullback-obj-mk-truth.md) | 214 | `result-track:f82711e4cb5a222247c61ffc30a27f42599bbf1131473cd7d3ebac104d885144` |
| 15 | `lemma` | [χ_pullback_obj_mk_truth_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Classifier.lean/declarations/pullback-obj-mk-truth-arrow.md) | 219 | `result-track:d996182c24a084d0a61b684e43e1bd764b54bba646d3b6fa5983ec955cbca9c9` |
| 16 | `def` | [representableBy](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Classifier.lean/declarations/representableby.md) | 231 | `declaration-track:4d0f7fee1ae6842ca9ebe9324c736293f9c8f353873dd2a84cc780c48af9bd0e` |
| 17 | `abbrev` | [SubobjectRepresentableBy](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Classifier.lean/declarations/subobjectrepresentableby.md) | 251 | `declaration-track:2c4ca87e1b38fa89fa1bf56e1f92afe21fb69006b717a34fd95e5e58b55377a0` |
| 18 | `def` | [Ω₀](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Classifier.lean/declarations/anonymous-source-edition-2.md) | 259 | `declaration-track:312fa60f4193ed1eed805a8ebe625e18e4729a005b0e69ec490965766c35eaf9` |
| 19 | `lemma` | [homEquiv_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Classifier.lean/declarations/homequiv-eq.md) | 263 | `result-track:a15a4262c84e13a088c9a5d0ed13c322662a27140211ca4576183e9f6b6551c7` |
| 20 | `lemma` | [pullback_homEquiv_symm_obj_Ω₀](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Classifier.lean/declarations/pullback-homequiv-symm-obj.md) | 269 | `result-track:f8c5da1e12de84f6d9fcc5ddd7229d12ec7050b9239d2f56ac2747302736dd29` |
| 21 | `def` | [χ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Classifier.lean/declarations/anonymous.md) | 278 | `declaration-track:088bdf9038c97f8b062ec30e6ddca0161e93c147bf2ba2083221edcbc7071766` |
| 22 | `def` | [iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Classifier.lean/declarations/iso-source-edition-2.md) | 282 | `declaration-track:ea29e26bf2b1b7157a38f4377c9257a5b0e0e7876474935ecc48ba973ddfca46` |
| 23 | `def` | [π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Classifier.lean/declarations/anonymous-source-edition-4.md) | 298 | `declaration-track:a592877e5c29c68dad5d4ce7f7888f9d3ce66b8296cbea53f3d3f1108a518e34` |
| 24 | `lemma` | [iso_inv_left_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Classifier.lean/declarations/iso-inv-left.md) | 302 | `result-track:097aad3ed3d83865f8a89df523e550e348887cb0bae4edb3b356a38206986345` |
| 25 | `lemma` | [iso_inv_left_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Classifier.lean/declarations/iso-inv-left-comp.md) | 310 | `result-track:e42c3c94b9fbecf089c14b2098e30888e74efebd507027fd7de6270902010103` |
| 26 | `lemma` | [isPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Classifier.lean/declarations/ispullback.md) | 315 | `result-track:59e2afe891506dccea72ec96142de4522fcf88d4c242bb8a14414c56d724926e` |
| 27 | `lemma` | [uniq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Classifier.lean/declarations/uniq.md) | 323 | `result-track:8a8003cf4326cc25188c64bf54a18be837ab275da1d8100a186a8d7e090aa6b6` |
| 28 | `def` | [isTerminalΩ₀](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Classifier.lean/declarations/isterminal.md) | 332 | `declaration-track:48b51c96daeab419d53cd5dbb196eef722c862389db6472dcfba41d0ed0ecd69` |
| 29 | `lemma` | [hasTerminal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Classifier.lean/declarations/hasterminal.md) | 343 | `result-track:a8f198d9088932a937a4c2adf851041553a806f4bb24a6cb20a838a9b1a4bd49` |
| 30 | `def` | [isoΩ₀](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Classifier.lean/declarations/iso.md) | 348 | `declaration-track:81ce21a6bdd6c4960254ec91b9ea9509587f3e7b1cdd5e3c9d9313beb91ee070` |
| 31 | `def` | [classifier](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Classifier.lean/declarations/classifier-source-edition-2.md) | 353 | `declaration-track:63186291eb51bfe6b015b7ff772719379d98f19ce4f83039b29ac3a132489cb6` |
| 32 | `theorem` | [isRepresentable_hasClassifier_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Classifier.lean/declarations/isrepresentable-hasclassifier-iff.md) | 371 | `result-track:c50b1625fe30f5b37781229174ea0ede829cc171adbf412d0c6c798f173ad737` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b9c7f28c71e089531d328b2cc32d2cba81f4e70de0ae88ffc4aad5736668b01a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Classifier/Varianta21cb60cea826048af2e3ba3dc683a6e00ff1f042a7d61751bb124e2740bb663.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Classifier/Varianta21cb60cea826048af2e3ba3dc683a6e00ff1f042a7d61751bb124e2740bb663.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
