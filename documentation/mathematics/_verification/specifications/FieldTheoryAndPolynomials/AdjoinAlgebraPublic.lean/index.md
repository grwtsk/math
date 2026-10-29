# Verification target: Adjoin Algebra Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a611b558f40f765128ef34d5bbc129e39ec91580",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Algebra/Variant27b6d6ef4374e63f20b0731883b026e0f4e5071baa21ea13c5f060122b512ca8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a611b558f40f765128ef34d5bbc129e39ec91580`.

Source path: `GRWTSK/Algebra/Algebra/Variant27b6d6ef4374e63f20b0731883b026e0f4e5071baa21ea13c5f060122b512ca8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Algebra/Variant27b6d6ef4374e63f20b0731883b026e0f4e5071baa21ea13c5f060122b512ca8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [algebra_adjoin_le_adjoin](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/algebra-adjoin-le-adjoin.md) | 30 | `result-track:3ee2cadcc1e719e75b807d95523b682744e7f1832de18f2ac2599c2e766dc7b8` |
| 2 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/instance.md) | 36 | `declaration-track:28a72428fb3777e0b723d06c07f30fac6cc4c5b4b3d69539c046deca3c1fcb0b` |
| 3 | `theorem` | [coe_algebraMap](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/coe-algebramap.md) | 40 | `result-track:89a37410fb19fd8f911f3eaa18ebd4cf9862d23fb557dd471f69d9842b25f5ea` |
| 4 | `theorem` | [algebraMap_eq_gen_self](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/algebramap-eq-gen-self.md) | 44 | `result-track:88533a234b90eb93b7aa76e0605c612f7b147f523e975b170f09100a5989d4e1` |
| 5 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/instance-source-edition-2.md) | 48 | `declaration-track:34e859e2788b0937bd7cecfb6d01ae19ae232b1973941b069def275473d497e3` |
| 6 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/instance-source-edition-7.md) | 52 | `declaration-track:c108d4d0293deef3a79639bdd392a553dd58b311fbdd1b8e749277fcaa156966` |
| 7 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/instance-source-edition-8.md) | 55 | `declaration-track:cc25967bd09aea23aedb937a41c6fb5a51a90c9040f9f039e7762452e31ec103` |
| 8 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/instance-source-edition-6.md) | 58 | `declaration-track:9c30ea7ddd7f359b11930435e5319ec4d137d089396ab330b700f819d482390f` |
| 9 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/instance-source-edition-4.md) | 62 | `declaration-track:83a4228889d824eed430f4343dc4fd396e5a7338bdd4bf6dd4105a876348220f` |
| 10 | `theorem` | [adjoin_eq_algebra_adjoin](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/adjoin-eq-algebra-adjoin.md) | 67 | `result-track:5390abb20ddacc72a84dadbc5f549d7b6bce0944906188ff832b1c39c6b0e8e5` |
| 11 | `theorem` | [eq_adjoin_of_eq_algebra_adjoin](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/eq-adjoin-of-eq-algebra-adjoin.md) | 76 | `result-track:31abdc0eadcc1c1ebb7918288cd575a4d808066c4b557127577d5fb9c4419271` |
| 12 | `theorem` | [adjoin_eq_top_of_algebra](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/adjoin-eq-top-of-algebra.md) | 84 | `result-track:51ac76676f831ed942defff80bd285f67a8724326e68c8fdb064327a98906931` |
| 13 | `lemma` | [fg_top_iff](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/fg-top-iff.md) | 92 | `result-track:ce5166a068eab03d85f019bb37685b99d926712e5e12cf774623b8695d268cf3` |
| 14 | `lemma` | [fg_top](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/fg-top.md) | 115 | `result-track:86d91507fb4160fdcda0e0131084485df8fd6d2e2da8ed25e0ff002b0b38c0be` |
| 15 | `lemma` | [essFiniteType_iff](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/essfinitetype-iff.md) | 118 | `result-track:b17650081c60509b4e6cb246a0af32349ef40efddc5297bc577eb20d57c835fa` |
| 16 | `theorem` | [_root_.Field.fg_iff_essFiniteType](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/root-field-fg-iff-essfinitetype.md) | 129 | `result-track:edc711a13a94f12010b434fad85b55b905ff6c0c207bcb8fb9abc1fd266ccea4` |
| 17 | `theorem` | [AdjoinSimple.isIntegral_gen](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/adjoinsimple-isintegral-gen.md) | 141 | `result-track:ba673f5717644a1b82277cfef5d578b13e3fcd687ac26198501663c420521ce5` |
| 18 | `theorem` | [adjoin_toSubalgebra_of_isAlgebraic](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/adjoin-tosubalgebra-of-isalgebraic.md) | 147 | `result-track:f4032fc28d2ab5dbc5c64fef56fc30135e09b50e4ab60471f328b5a69b822533` |
| 19 | `theorem` | [adjoin_simple_toSubalgebra_of_isAlgebraic](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/adjoin-simple-tosubalgebra-of-isalgebraic.md) | 152 | `result-track:44b59fb42e54fc561cd87efdd06cbcc8ea266eeec6018fd52ca14887bd7fa095` |
| 20 | `theorem` | [adjoin_toSubalgebra](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/adjoin-tosubalgebra.md) | 157 | `result-track:cafff0d5d26d659f22dd6b36e4801862b70d74116dd091d79fc673e3e8205dd1` |
| 21 | `theorem` | [adjoin_eq_top_iff_of_isAlgebraic](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/adjoin-eq-top-iff-of-isalgebraic.md) | 161 | `result-track:f39fff67636a8c379c88914d75d20c8b6c47d209d5940bf7de6b705f46123629` |
| 22 | `theorem` | [adjoin_simple_eq_top_iff_of_isAlgebraic](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/adjoin-simple-eq-top-iff-of-isalgebraic.md) | 169 | `result-track:8cc3f03e6d18edb27fdfb5497661f5625c1bee1b8288bdc56a848651bed23817` |
| 23 | `theorem` | [adjoin_eq_top_iff](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/adjoin-eq-top-iff.md) | 176 | `result-track:5225ac4c9894fb6aef9423604afe9fc2485c235b02e14fe50c7c4513ccc5a315` |
| 24 | `lemma` | [_root_.Algebra.finite_of_essFiniteType_of_isAlgebraic](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/root-algebra-finite-of-essfinitetype-of-isalgebraic.md) | 180 | `result-track:9745974f53777f57747b1fefcb36019d7d030e2768beebb2551ed48a1a1ea2d9` |
| 25 | `def` | [RingHom.adjoinAlgebraMapOfAlgebra](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/ringhom-adjoinalgebramapofalgebra.md) | 196 | `declaration-track:cda96b2090538c612d164cf2dd5d873130a435e8e4da5b86bf303616b1e189fe` |
| 26 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/instance-source-edition-5.md) | 202 | `declaration-track:843daa92faac3e1e63265a2459a12adc5335ff98741bd55a97505e30290e4a9b` |
| 27 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/instance-source-edition-3.md) | 205 | `declaration-track:4cd19e4107212f3748acf5571f5f1f524e1b2a13ced690143469fca6bbc23fa0` |
| 28 | `theorem` | [le_sup_toSubalgebra](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/le-sup-tosubalgebra.md) | 214 | `result-track:31c05c595efb6614f384efb2c208d730a181e930b4f31c186bb370b1ae56b5c6` |
| 29 | `theorem` | [sup_toSubalgebra_of_isAlgebraic_right](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/sup-tosubalgebra-of-isalgebraic-right.md) | 217 | `result-track:d04402df6c7ddc6d58bc10bfcea3fbe7685643f1c9b966141936d3a7d8c58397` |
| 30 | `theorem` | [sup_toSubalgebra_of_isAlgebraic_left](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/sup-tosubalgebra-of-isalgebraic-left.md) | 229 | `result-track:fd7e60496ef6b918fb61e7da213da86db3641c57b31b32e828d62136b05c34d4` |
| 31 | `theorem` | [sup_toSubalgebra_of_isAlgebraic](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/sup-tosubalgebra-of-isalgebraic.md) | 236 | `result-track:459a1c28852d1d69f0d7e94e132a5fe105664d90810f9190853c89b59f0e46ee` |
| 32 | `theorem` | [sup_toSubalgebra_of_left](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/sup-tosubalgebra-of-left.md) | 242 | `result-track:e57f26456c9702d833ee08cae03264d60c699514c47a6b06fb3e2351dd7e779e` |
| 33 | `theorem` | [sup_toSubalgebra_of_right](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/sup-tosubalgebra-of-right.md) | 246 | `result-track:e33ba6afdb078b41a25bb499d3a50542636ad616459baf8cc252402150d5aead` |
| 34 | `theorem` | [adjoin_intermediateField_toSubalgebra_of_isAlgebraic](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/adjoin-intermediatefield-tosubalgebra-of-isalgebraic.md) | 259 | `result-track:c0177670ef9b511e7491b809e01883ee741b241ae5d43a4cab2af187de877be3` |
| 35 | `theorem` | [adjoin_intermediateField_toSubalgebra_of_isAlgebraic_left](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/adjoin-intermediatefield-tosubalgebra-of-isalgebraic-left.md) | 274 | `result-track:b767bf9531df267b4176a75199350fd521943b03046564ed092870da5ac64d97` |
| 36 | `theorem` | [adjoin_intermediateField_toSubalgebra_of_isAlgebraic_right](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/adjoin-intermediatefield-tosubalgebra-of-isalgebraic-right.md) | 279 | `result-track:9c983f1b76461afb07687f6ef9f142eeaf809d3a48cd10a9449b4794d3b0335f` |
| 37 | `theorem` | [fg_of_fg_toSubalgebra](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/fg-of-fg-tosubalgebra.md) | 294 | `result-track:0dea42fdd4fbd2dea4a03d34d7b836aa511bd34739f54f8de075d3d8500cae17` |
| 38 | `theorem` | [fg_of_noetherian](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/fg-of-noetherian.md) | 298 | `result-track:545de6dd88c0d08f230c1f19e0059b7b9a091023a4d8816ba31d3913979e794c` |
| 39 | `theorem` | [induction_on_adjoin](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/induction-on-adjoin.md) | 301 | `result-track:11fc29ec745f9195ef2846fdd4263a9b57e52e391abb7379a3e6b73a21d97a88` |
| 40 | `theorem` | [algHom_fieldRange_eq_of_comp_eq](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/alghom-fieldrange-eq-of-comp-eq.md) | 321 | `result-track:045e8798db92c4dd5a7ec0012cf233607bfcbc74a5a522f05a0b9e2562e31dac` |
| 41 | `theorem` | [algHom_fieldRange_eq_of_comp_eq_of_range_eq](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/alghom-fieldrange-eq-of-comp-eq-of-range-eq.md) | 333 | `result-track:eb1e5986ea319eae4adfafc8afbe0e0a06df9d5817139ed79c187e532458cb7f` |
| 42 | `theorem` | [liftAlgHom_fieldRange](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/liftalghom-fieldrange.md) | 346 | `result-track:9f6ba5c3e18feb064c7d313ebd072963d4ea422f42c7a1e0a68f558c31b45b5d` |
| 43 | `theorem` | [liftAlgHom_fieldRange_eq_of_range_eq](../../../../FieldTheoryAndPolynomials/AdjoinAlgebraPublic.lean/declarations/liftalghom-fieldrange-eq-of-range-eq.md) | 352 | `result-track:d08378c8d7fdb9d269e94079af6ffc30a43c49ef220581fcb41b6ec5c246f7ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4bfc70ab9abb00b1f02c6c87f777a27d3560e0aed7396e434493274330802f4e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Algebra/Variant27b6d6ef4374e63f20b0731883b026e0f4e5071baa21ea13c5f060122b512ca8.lean","GRWTSK/_verification/specifications/Algebra/Algebra/Variant27b6d6ef4374e63f20b0731883b026e0f4e5071baa21ea13c5f060122b512ca8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
