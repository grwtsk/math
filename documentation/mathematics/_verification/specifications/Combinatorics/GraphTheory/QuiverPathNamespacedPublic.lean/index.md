# Verification target: Quiver Path Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8715831abe0a66215bbc4c85cfe4930ff7f04085",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantcb231e61aff506576a01b2d51a40530d7782442517eabba8dcdb6a4ed87ff257.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8715831abe0a66215bbc4c85cfe4930ff7f04085`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantcb231e61aff506576a01b2d51a40530d7782442517eabba8dcdb6a4ed87ff257.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantcb231e61aff506576a01b2d51a40530d7782442517eabba8dcdb6a4ed87ff257.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Path](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/path.md) | 39 | `declaration-track:1b984b96dd4d54b578ab701488d2b27ace2aa4ed1f255670b150533f4436724c` |
| 2 | `def` | [Hom.toPath](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/hom-topath.md) | 47 | `declaration-track:d0a8c2db98d5e0300e4f281a0eeb67a349297fb49589ee02a428a15d3d01302f` |
| 3 | `lemma` | [nil_ne_cons](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/nil-ne-cons.md) | 54 | `result-track:7a5da1aa810e618277d121197f89bd048b5037fe57325f9420d9d336383536bb` |
| 4 | `lemma` | [cons_ne_nil](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/cons-ne-nil.md) | 57 | `result-track:3e9ac781ba18b5e8afd040ab8ecedf2cb18ced22223048dec09d80beb760056b` |
| 5 | `lemma` | [obj_eq_of_cons_eq_cons](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/obj-eq-of-cons-eq-cons.md) | 60 | `result-track:994896d83fa3edebb451500ab15cb31d6e1c261e8678c640c75cb6150a434c21` |
| 6 | `lemma` | [heq_of_cons_eq_cons](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/heq-of-cons-eq-cons.md) | 63 | `result-track:1c8e035c77d2d83d54fbd465c361254c4e0106dd8ca887473152fa632daec874` |
| 7 | `lemma` | [hom_heq_of_cons_eq_cons](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/hom-heq-of-cons-eq-cons.md) | 66 | `result-track:7100d9c889cf7980c9655183ce6684b815aae392d2b91f853ae80d1e52e66bee` |
| 8 | `def` | [length](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/length.md) | 70 | `declaration-track:c3ec95add1e80e50545e9c462d6be06c3f978c8f6bdae0e23613934387aca3ab` |
| 9 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/instance.md) | 74 | `declaration-track:09d6560c36de600590c3a7aec2da75083b4e800bd75e7d8c10323e2ef78c0f32` |
| 10 | `theorem` | [length_nil](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/length-nil.md) | 78 | `result-track:917bc11c6712aee2c9cd731aaee7817ba579c9d2d5c88f9791ceebc1a3b5688d` |
| 11 | `theorem` | [length_cons](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/length-cons.md) | 82 | `result-track:54b40b3acf0465dbe10be230148eaff748438ac8de29bb14e45b764ea3eebae3` |
| 12 | `theorem` | [eq_of_length_zero](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/eq-of-length-zero.md) | 85 | `result-track:ac9f49eaf360a9f39128a399d4b92523fad215d48e2f85882a4ac84ebcba1768` |
| 13 | `theorem` | [eq_nil_of_length_zero](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/eq-nil-of-length-zero.md) | 90 | `result-track:33bf4428134b79931558cf14c6f89044b4c32b9f743a8e1c72e0573c0eea5b57` |
| 14 | `lemma` | [length_toPath](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/length-topath.md) | 96 | `result-track:0ba9ea37e3dae06fef8f6dac7cbc6dbb5e4d6b63f4fe4c8f0bc92a97d6ba021e` |
| 15 | `def` | [comp](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/comp.md) | 99 | `declaration-track:575f347de3152e12ced634a7fb965505acb7656bee72e803fa714d957cdb160c` |
| 16 | `theorem` | [comp_cons](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/comp-cons.md) | 104 | `result-track:7d4a6fcb1282c3275cad29641200966d1d516fde0412d5fd06eaadfdf4fdd322` |
| 17 | `theorem` | [comp_nil](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/comp-nil.md) | 109 | `result-track:3ad2ec9cb3b8b04cdd121462dde31a7155646a105f5e30457ab6bb8c0ca06c17` |
| 18 | `theorem` | [nil_comp](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/nil-comp.md) | 113 | `result-track:1d4190487d4f7a29619ec76b10044c2de9abddd8e3252587ee87fe040094d4dc` |
| 19 | `theorem` | [comp_assoc](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/comp-assoc.md) | 118 | `result-track:289bd9c95b8702dbac66bb278dd814c461a2821e8af4da91ed25a698e3927476` |
| 20 | `theorem` | [length_comp](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/length-comp.md) | 124 | `result-track:efddd6fe8469d39c75be248f792e9a457329d0a53c8597652faaf7419a8bbba9` |
| 21 | `theorem` | [comp_inj](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/comp-inj.md) | 128 | `result-track:9a3aacf8ec8c8ae3c7a4192ce781c39a9a4ae523d0ee778172d5a60acda43bd6` |
| 22 | `theorem` | [comp_inj'](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/comp-inj-source-edition-2.md) | 145 | `result-track:bf932665ae6e602f2447718482696d71577bd772f3b1e119ec58cc9306dbb855` |
| 23 | `theorem` | [comp_injective_left](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/comp-injective-left.md) | 151 | `result-track:275fe835c15826af458f526e236a19327798c86f4ce03ccc354554a1ffc345a6` |
| 24 | `theorem` | [comp_injective_right](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/comp-injective-right.md) | 154 | `result-track:6cfb343bc190b2eef826cacd871f460b7870b93f54de29a33a874a3517be25cf` |
| 25 | `theorem` | [comp_inj_left](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/comp-inj-left.md) | 158 | `result-track:3e6e23e03d74b79d01f7b57414eae7cf98bedb347ad6d92b18522c6469a1fa7e` |
| 26 | `theorem` | [comp_inj_right](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/comp-inj-right.md) | 162 | `result-track:acca5959fc8d734c4d3941701585a3a0265eab991d1febacd888eaedb830404e` |
| 27 | `lemma` | [eq_toPath_comp_of_length_eq_succ](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/eq-topath-comp-of-length-eq-succ.md) | 165 | `result-track:670bd29dceadad90b5fce59e709384a6493c2c0f7fa145b6a3e9e16b980fd527` |
| 28 | `lemma` | [length_ne_zero_iff_eq_comp](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/length-ne-zero-iff-eq-comp.md) | 185 | `result-track:981f5ac1242dd17f30dffbe5146125c88ea5dea9607b046bd1318a86ecf95530` |
| 29 | `lemma` | [length_ne_zero_iff_eq_cons](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/length-ne-zero-iff-eq-cons.md) | 196 | `result-track:d3b1dad4de6d9b2f17aed9e04de775240cc3ccd522b3c61a70046dfa029a7597` |
| 30 | `lemma` | [comp_toPath_eq_cons](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/comp-topath-eq-cons.md) | 205 | `result-track:077f0ba2160ee33caea3c92333563d3dcbf680c1eda8c32f1881778da8f1376b` |
| 31 | `def` | [toList](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/tolist.md) | 213 | `declaration-track:c7a8c646f73b6bfabe58aabd4fd5d9a920f8cb7438a28c18d52c140afd875431` |
| 32 | `theorem` | [toList_comp](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/tolist-comp.md) | 220 | `result-track:9a9c3a559c010b477ca9004eb47bd1e9c5a9f3ed480a8057bc58f0f2e0f5e2d1` |
| 33 | `theorem` | [isChain_toList_nonempty](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/ischain-tolist-nonempty.md) | 224 | `result-track:6636acdc3880d77ad35ac52806a6ce4378a746c1cbdf745e062d7f4e19568552` |
| 34 | `theorem` | [isChain_cons_toList_nonempty](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/ischain-cons-tolist-nonempty.md) | 230 | `result-track:d57f9578809816d7d7daa47fa6d5c3e2376e230ef0c9daa159ea1b9d64121d8a` |
| 35 | `theorem` | [toList_injective](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/tolist-injective.md) | 237 | `result-track:4d28dbc154a5b2597e08f7e9dee8298db6dfaa730d7852b116f91df68582b81f` |
| 36 | `theorem` | [toList_inj](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/tolist-inj.md) | 247 | `result-track:6a838026cfbf839ee5942527adfa50dda4a7df744ee18dfa6fd73c01da75614e` |
| 37 | `def` | [BoundedPaths](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/boundedpaths.md) | 256 | `declaration-track:b621e476861580e7cd4e05d3c68d8715867c647681fa98c96cb8efceb4a6b62b` |
| 38 | `instance` | [instSubsingletonBddPaths](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/instsubsingletonbddpaths.md) | 260 | `declaration-track:757ceb934d8a9c628f1c81544a15597cbab55f27bbef4fff8480b0f6ba61ec35` |
| 39 | `def` | [decidableEqBddPathsZero](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/decidableeqbddpathszero.md) | 268 | `declaration-track:bba9dbbf584f8bb85e371743107aed36a36ffe41a3d42d19dca8b4132ce0a958` |
| 40 | `def` | [decidableEqBddPathsOfDecidableEq](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/decidableeqbddpathsofdecidableeq.md) | 274 | `declaration-track:a379126a4ad64bd991b52380537eb54d3cfce64ed7a6f30827cbeeeb48c82a3c` |
| 41 | `instance` | [decidableEqBoundedPaths](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/decidableeqboundedpaths.md) | 305 | `declaration-track:aaf0a4fdcc505827f297a89049c777d6e83995427cceb4db143d274fd0a03d38` |
| 42 | `instance` | [instDecidableEq](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/instdecidableeq.md) | 312 | `declaration-track:5b3073aa2ec76f744069c1060010b013df89fe7923325ee027c5b29d086a50d6` |
| 43 | `def` | [Reachable](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/reachable.md) | 331 | `declaration-track:ade7c946b2b5a7c032bb7e6eb8972ed18904c0451b4d72e3d12c30482f92a763` |
| 44 | `theorem` | [Reachable.elim](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/reachable-elim.md) | 335 | `result-track:1d557bb1cf91ec718cd7c65ba1fab96e42cf432db3d50411f5a114b125fbd51c` |
| 45 | `theorem` | [Reachable.refl](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/reachable-refl.md) | 339 | `result-track:1f21093bd1fbd9c82c8a13c669c71d320895f54ea7044b4a9f93914f50845839` |
| 46 | `theorem` | [Reachable.rfl](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/reachable-rfl.md) | 342 | `result-track:5aa0f778ee584ea38d087f367994ea6a52df059c22b8ada1cb1bbea27a6a06df` |
| 47 | `theorem` | [Reachable.trans](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/reachable-trans.md) | 345 | `result-track:703775c4f6a863b4128c2f78ced19a5d93ad23700538be02f8139e56412d5ca0` |
| 48 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 348 | `declaration-track:b9e65c42c1b719a40e545ce84181193e248f0092959b5c87fced10b4acc298f6` |
| 49 | `theorem` | [Path.reachable](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/path-reachable.md) | 353 | `result-track:eda0324040bf030b9e47db5e53936c1760e0d1686adbe20cb0e9c693fd412e24` |
| 50 | `theorem` | [Hom.reachable](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/hom-reachable.md) | 356 | `result-track:1343f50080cf8b236c039511ec9f14cc6c3838e4b1175dd3ac63ff7252f94d98` |
| 51 | `def` | [mapPath](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/mappath.md) | 369 | `declaration-track:c8168e766715dda51f4410afda9db0ab21945da359a9b85e0167519a9736a3d9` |
| 52 | `theorem` | [mapPath_nil](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/mappath-nil.md) | 374 | `result-track:c12a3ae1da1a0d1c708f495e456282c0b6c3135b289bd4a0afc6390e8620a9e2` |
| 53 | `theorem` | [mapPath_cons](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/mappath-cons.md) | 378 | `result-track:91c7807716557edcf4a3c9690c8dd60e8721c265370bcfef272810588a560bd4` |
| 54 | `theorem` | [mapPath_comp](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/mappath-comp.md) | 383 | `result-track:5ec2987dcf0de52977b0ba974a90587e2fa9c6e2a2cc1ada3e965f66da53b6db` |
| 55 | `theorem` | [mapPath_toPath](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/mappath-topath.md) | 389 | `result-track:0f5c5d5fefe7195cf5bf4db556f1a310a4e9d283ea88f95fb85041c50b07f200` |
| 56 | `theorem` | [mapPath_id](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/mappath-id.md) | 394 | `result-track:0d9f589b7ad8e88eac269c2757b775f32392aec2c38b23ea715b4360e2cb2596` |
| 57 | `theorem` | [mapPath_comp_apply](../../../../../Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/declarations/mappath-comp-apply.md) | 402 | `result-track:b7c3d7cc92ecd4a933efbfa5a952b6d54828c7dc97ad15c82967edede020a5aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=af698a3859b6ae3be0846b5d12968be8ffd4e36e4ee598c95e1a12580d634882 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantcb231e61aff506576a01b2d51a40530d7782442517eabba8dcdb6a4ed87ff257.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantcb231e61aff506576a01b2d51a40530d7782442517eabba8dcdb6a4ed87ff257.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
