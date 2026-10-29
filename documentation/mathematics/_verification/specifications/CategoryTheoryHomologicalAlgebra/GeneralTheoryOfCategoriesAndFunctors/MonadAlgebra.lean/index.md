# Verification target: Monad Algebra

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e6a0c7fb333107166c1add75333c8ff3c8430b5",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variante1e2cb2e9db050bfebca9577b3cebc91ddb18184a3e525e76265e9718341c9a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e6a0c7fb333107166c1add75333c8ff3c8430b5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variante1e2cb2e9db050bfebca9577b3cebc91ddb18184a3e525e76265e9718341c9a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variante1e2cb2e9db050bfebca9577b3cebc91ddb18184a3e525e76265e9718341c9a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monad.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.EpiMono` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Algebra](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/algebra.md) | 38 | `declaration-track:f36ef843c4ad52a4351b57f33280240491d757732f6962ea69f9a86bfd8adb0a` |
| 2 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/hom-source-edition-2.md) | 56 | `declaration-track:d7b42640583044fbb05a9e71c4d8bb1a8e4c9c06377f43e0f1018ee856b67698` |
| 3 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/id.md) | 70 | `declaration-track:43f7d3002bb49228ce0aa7f31325eea29e1077616f7671ccb52a7650340a0cf2` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/instance-source-edition-3.md) | 72 | `declaration-track:2de3d8c1ed221d9d26ee33e712857f1afb00210c7a3afe36cad52ccf78ccafba` |
| 5 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/comp.md) | 76 | `declaration-track:032cfd5d3d7644ef22038f6d2309f8148545e0c4e26df1261c9d6c4744874ccb` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/instance-source-edition-2.md) | 80 | `declaration-track:14c3f74731cb849305054160d4b7a3eae1751cb9e0af987e5eb291189f94ab19` |
| 7 | `lemma` | [Hom.ext'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/hom-ext-source-edition-2.md) | 87 | `result-track:db0232eb2c5234afa1e3b8afb67ec861e775f9b02d886dbfb3f33795343fa2b1` |
| 8 | `theorem` | [comp_eq_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/comp-eq-comp.md) | 90 | `result-track:403088ccbf8d6b58d6c1770c96f5729e55a5b061b85e59fab50240fa3d916098` |
| 9 | `theorem` | [id_eq_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/id-eq-id.md) | 95 | `result-track:7c66a98e455e3d55c670d28c944e3ef3022554acb1c490c6d9bbb24649914d6b` |
| 10 | `theorem` | [id_f](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/id-f.md) | 99 | `result-track:45473f72becd3f165cdb6a4a42d530a61c62ed9f5f3f3116f146b0797ef96b72` |
| 11 | `theorem` | [comp_f](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/comp-f-source-edition-2.md) | 103 | `result-track:6eb598f64c16d595ac137a6d456238efef0f1d54eede7620c9261cb7d7e261de` |
| 12 | `instance` | [eilenbergMoore](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/eilenbergmoore-source-edition-2.md) | 108 | `declaration-track:ff63967593c6c94965ebde4213c9c5178f7045e3463ed9b70e91f83f0d398aaa` |
| 13 | `def` | [isoMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/isomk.md) | 115 | `declaration-track:0debfbaa425b570d8b816deabdf7a8578a4bb6374ab85bbd8b2fa9d2ea8a3795` |
| 14 | `def` | [forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/forget.md) | 130 | `declaration-track:143b8e075b1922ecde2d7c82db5ba931532cfe68cdd08c3e9a41a2f6b17e1508` |
| 15 | `def` | [free](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/free.md) | 136 | `declaration-track:8adc2f6e290ce68217b508b6c2074ca123c4cda5f5172aef63a3791b2251b276` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/instance-source-edition-6.md) | 145 | `declaration-track:d86ee8166f68e451e31ac371d0fcbe87361b777f93c8f4e58d7e8b2aaa904b40` |
| 17 | `def` | [adj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/adj.md) | 153 | `declaration-track:2a44b9d3c1e670671df3d62968dd8d531b5200750efbfcb765559e914939e5ed` |
| 18 | `theorem` | [algebra_iso_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/algebra-iso-of-iso.md) | 173 | `result-track:154128802a5cecbfbebc05f2237e007b61a78e5c7b531b4c1dd3311b9d884e3a` |
| 19 | `instance` | [forget_reflects_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/forget-reflects-iso.md) | 180 | `declaration-track:6cd26bd5142c55553130aa0936b0c81d8d30988a5e21a90bfd057a9752691954` |
| 20 | `instance` | [forget_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/forget-faithful-source-edition-2.md) | 184 | `declaration-track:c81b8ee04da0f197dfaec91c7eb55d7d167a5f9c98e467ae76faad9b82941b43` |
| 21 | `theorem` | [algebra_epi_of_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/algebra-epi-of-epi.md) | 188 | `result-track:729f8780021a9aff415662ed099444d22ce2eb71cb1e30af1974cae740e6ad68` |
| 22 | `theorem` | [algebra_mono_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/algebra-mono-of-mono.md) | 193 | `result-track:b0042cb67da9006bb4e14a646934b8f3ad7f3f87168d5acdf23ea295b313c984` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/instance-source-edition-5.md) | 196 | `declaration-track:d2ad2c9abf614f4fa26b07fa0bb06ceb1aec738b11b181a750de420a73d23257` |
| 24 | `def` | [algebraFunctorOfMonadHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/algebrafunctorofmonadhom.md) | 204 | `declaration-track:7b324ba2ad1518e53bf2775e7ddcaa5a44963ade2c88d63807c4b608c3b2aede` |
| 25 | `def` | [algebraFunctorOfMonadHomId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/algebrafunctorofmonadhomid.md) | 221 | `declaration-track:013eab46e1ccbc4ce44fe0c55a5fb8ca50f60a4c905530d809fef63298cd0557` |
| 26 | `def` | [algebraFunctorOfMonadHomComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/algebrafunctorofmonadhomcomp.md) | 227 | `declaration-track:5dfa6696af0529af758e0a76b4ec0a3df1dfaa82fe66158646763fd8513cfe63` |
| 27 | `def` | [algebraFunctorOfMonadHomEq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/algebrafunctorofmonadhomeq.md) | 237 | `declaration-track:57eda9171b6ad9ce108838ae7cc4f32c846fdaaa1ab9008387656daf3ac68191` |
| 28 | `def` | [algebraEquivOfIsoMonads](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/algebraequivofisomonads.md) | 245 | `declaration-track:b17849f281db89db945243684b3247758949bbe0b2168c5d9598c5c0249f993a` |
| 29 | `theorem` | [algebra_equiv_of_iso_monads_comp_forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/algebra-equiv-of-iso-monads-comp-forget.md) | 256 | `result-track:0f2dfa95a23db21079b80e6141fb12ebf439c3928ad624d329b6665c81c38d36` |
| 30 | `structure` | [Coalgebra](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/coalgebra.md) | 265 | `declaration-track:057b6d7a00705f820f2e80babc7a139b563eb7c22c1bccf4ec71ef408885223e` |
| 31 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/hom.md) | 290 | `declaration-track:688fa4256b687d0ec9a24b9b23c834ddc6e612db7d4d3e38a50b4fdf767f5478` |
| 32 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/id-source-edition-2.md) | 304 | `declaration-track:c31552e24ab44928392beccbed33d2a7cca31bb59c574205797a4a8df7d95666` |
| 33 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/comp-source-edition-2.md) | 307 | `declaration-track:e2ab477c1f4b18a4b3d2f6e893118c82eb699f0e0f54b8a5e6485d8777d6124f` |
| 34 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/instance.md) | 312 | `declaration-track:0d06bdb799bda50549b7b96b6ad52134051a68e883c858a5cae2877256606198` |
| 35 | `lemma` | [Hom.ext'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/hom-ext.md) | 319 | `result-track:ca4b8a8d6daf2a7f07073664d0b60e63b702ae9223299dc9f4dd6c26aa98ee80` |
| 36 | `theorem` | [comp_eq_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/comp-eq-comp-source-edition-2.md) | 322 | `result-track:643e877022ee8b1a83fa96a17b4cbb2811a5ac0abef86edd3818ebd4c308b335` |
| 37 | `theorem` | [id_eq_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/id-eq-id-source-edition-2.md) | 327 | `result-track:b9ad7db0000845ab960e6b96026d5355b23e0e703cbaf53c2b0b85f98e4e5478` |
| 38 | `theorem` | [id_f](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/id-f-source-edition-2.md) | 331 | `result-track:54f847a52af5526e4b0e8b43bc69a943bda3c80704322fcb21a2ed7d65ca8de7` |
| 39 | `theorem` | [comp_f](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/comp-f.md) | 335 | `result-track:14962b05e5f15160c94f15eeccc860e0c206c84284e858b0269673d9f7aed686` |
| 40 | `instance` | [eilenbergMoore](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/eilenbergmoore.md) | 339 | `declaration-track:8103f3fea623ba42c310e65a3a747b5710f2d58cd3075dd6cf6439895ec2e601` |
| 41 | `def` | [isoMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/isomk-source-edition-2.md) | 346 | `declaration-track:e54ba6db6e8139311923f3b223299d0073e6c1778901c892853f3ff3d07def62` |
| 42 | `def` | [forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/forget-source-edition-2.md) | 362 | `declaration-track:52e44fd0fb51edfe80c8ac311fdd28e8f5ea6b32e9bbcec912c822e33678df23` |
| 43 | `def` | [cofree](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/cofree.md) | 369 | `declaration-track:d1b7489d213123d47290f3cb89ffae0d08cd705963c4c788da8a9df6d3badf61` |
| 44 | `def` | [adj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/adj-source-edition-2.md) | 384 | `declaration-track:ea6fd09b640456b2880e538bac300a74f5424cec77d8c802528c63f11805914c` |
| 45 | `theorem` | [coalgebra_iso_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/coalgebra-iso-of-iso.md) | 403 | `result-track:b80564b859f7bfd900795ad892516b2df3831bc16a9419b82c41a3fe52a4bbea` |
| 46 | `instance` | [forget_reflects_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/forget-reflects-iso-source-edition-2.md) | 410 | `declaration-track:8246329ff3f25e7708702136c9375059b558b389de140f59dca0a0579d7beac8` |
| 47 | `instance` | [forget_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/forget-faithful.md) | 414 | `declaration-track:213faf8f9ad43f8ecee0f3c09821ec8629df02b8358149488cce5c542de91d69` |
| 48 | `theorem` | [algebra_epi_of_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/algebra-epi-of-epi-source-edition-2.md) | 418 | `result-track:a50307aba82b42543ad337b63d657180e17f671f0a281fbdca53e0fa2083409d` |
| 49 | `theorem` | [algebra_mono_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/algebra-mono-of-mono-source-edition-2.md) | 423 | `result-track:f1e1023df946d14e4382f47e734210d8db492f2c9d13e3e714ec95a410b9c2c8` |
| 50 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebra.lean/declarations/instance-source-edition-4.md) | 426 | `declaration-track:d117bc05ec651938dde2a15dabbae61297ca2d8578026e8c518d8f25cdb7b8d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=43bb199b83d3cfdd54fb3060c3795be8ae25176e1c262dd97daeeec9aa90524e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variante1e2cb2e9db050bfebca9577b3cebc91ddb18184a3e525e76265e9718341c9a5.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variante1e2cb2e9db050bfebca9577b3cebc91ddb18184a3e525e76265e9718341c9a5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
