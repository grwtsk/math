# Verification target: Separable Closure Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b05d047cba5cc6f2d411584d84e1251d2c4d24a0",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/SeparableClosure/Variantdf5301054a03e42f16b073c61c64bfbdf786b4796c87fafa9f813a7d1b6892e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b05d047cba5cc6f2d411584d84e1251d2c4d24a0`.

Source path: `GRWTSK/Algebra/SeparableClosure/Variantdf5301054a03e42f16b073c61c64bfbdf786b4796c87fafa9f813a7d1b6892e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/SeparableClosure/Variantdf5301054a03e42f16b073c61c64bfbdf786b4796c87fafa9f813a7d1b6892e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.SeparableDegree` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsSepClosed` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [separableClosure](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/separableclosure-source-edition-2.md) | 85 | `declaration-track:97c5ee0d9cda31c3ee2b13538483a54b33973cbcae59f65ad3751db7e7f273e0` |
| 2 | `theorem` | [mem_separableClosure_iff](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/mem-separableclosure-iff.md) | 96 | `result-track:75989199da541dfa975448de2a1aaf52f3317c5fadc4bce883c117d716a1afd8` |
| 3 | `theorem` | [map_mem_separableClosure_iff](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/map-mem-separableclosure-iff.md) | 101 | `result-track:13c746c65d16db5cc5dc843c3286fb2b22b38c8e6a3bcc14c2237d93118e405f` |
| 4 | `theorem` | [separableClosure.comap_eq_of_algHom](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/separableclosure-comap-eq-of-alghom.md) | 107 | `result-track:48dde5fde8f90fba17e625b788c8ed50be57965a8cd9761bbb4c2be3f0615778` |
| 5 | `theorem` | [separableClosure.map_le_of_algHom](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/separableclosure-map-le-of-alghom.md) | 114 | `result-track:e50158825caa2c04232ebe1f406ef7928829a48d219e0ec72478fb8a29f6258e` |
| 6 | `theorem` | [separableClosure.map_eq_of_separableClosure_eq_bot](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/separableclosure-map-eq-of-separableclosure-eq-bot.md) | 122 | `result-track:07183087bb9d72a113f6ab846ebbf5028b79d51efea1e43031d19835af723c4b` |
| 7 | `theorem` | [separableClosure.map_eq_of_algEquiv](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/separableclosure-map-eq-of-algequiv.md) | 132 | `result-track:bd29cb545428d5144598d258d110a026e59813f3dfc15714bf7b3fed1179d117` |
| 8 | `def` | [separableClosure.algEquivOfAlgEquiv](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/separableclosure-algequivofalgequiv.md) | 139 | `declaration-track:2aed8d667ab6df0708d0f317ff5ec10cfc9c5673024b2a3526ca7d7d12ea4f8a` |
| 9 | `instance` | [separableClosure.isAlgebraic](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/separableclosure-isalgebraic.md) | 148 | `declaration-track:345683ca038271cd6337d9fb17d6b8dd08bc34a61a89684d77de619a636945f0` |
| 10 | `instance` | [separableClosure.isSeparable](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/separableclosure-isseparable.md) | 153 | `declaration-track:976b284c4e7e3cb28cf810f52755c8f50784e478d1804528497afb0b0205a981` |
| 11 | `theorem` | [le_separableClosure'](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/le-separableclosure-source-edition-2.md) | 158 | `result-track:7d85764ab955551c4470d3de9a8d45c03501a7b3cd3f592ee6c5b7f2957590e9` |
| 12 | `theorem` | [le_separableClosure](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/le-separableclosure.md) | 163 | `result-track:75d6401190b2f578efa646d5bf9a28149293a410dae91dea94e6b6702d00cfaf` |
| 13 | `theorem` | [le_separableClosure_iff](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/le-separableclosure-iff.md) | 168 | `result-track:c8315a12ed132f1ac04aa63fd09b99cd233fa8bd1abf648b2fd7b2c7cb2dbd2b` |
| 14 | `theorem` | [separableClosure.separableClosure_eq_bot](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/separableclosure-separableclosure-eq-bot.md) | 174 | `result-track:ca149d5456a9c2e18bdd02c03ee2fcd0f30ca4b73249dc50d8ce4c8814f8b510` |
| 15 | `theorem` | [separableClosure.normalClosure_eq_self](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/separableclosure-normalclosure-eq-self.md) | 180 | `result-track:55b7df90302327fab4061c570745cd16d2bae28b77451f8ce062596a47d2316a` |
| 16 | `instance` | [separableClosure.isGalois](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/separableclosure-isgalois.md) | 190 | `declaration-track:af3accd944d6e3e2fa1eac483bb5dfc61450225e6bd299b7f54ec9912758d480` |
| 17 | `theorem` | [IsSepClosed.separableClosure_eq_bot_iff](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/issepclosed-separableclosure-eq-bot-iff.md) | 198 | `result-track:3bd3b3495f0647d02ccf73c1206303cd7dc475efb9668f981513f63987bf0a66` |
| 18 | `instance` | [separableClosure.isSepClosure](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/separableclosure-issepclosure.md) | 208 | `declaration-track:4201ea367ff4e1245392ef2139071f7870a2982f804cba4d9f99aed3447ac8a2` |
| 19 | `abbrev` | [SeparableClosure](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/separableclosure.md) | 216 | `declaration-track:4b18195beaad9aa05a8a42c5e34a1a9cba069b3fc4016a44846168e2cb161de1` |
| 20 | `theorem` | [IntermediateField.isSeparable_adjoin_iff_isSeparable](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/intermediatefield-isseparable-adjoin-iff-isseparable.md) | 220 | `result-track:f0ea5731b3430168f36a4324f0d0ff4888fc15971ee7ce3930e6d4035b9ee5dd` |
| 21 | `theorem` | [separableClosure.eq_top_iff](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/separableclosure-eq-top-iff.md) | 226 | `result-track:09af2b844b889f30d9f6f3983295879c63e7fd07de3ada4e201e4acc2c5ef580` |
| 22 | `theorem` | [separableClosure.le_restrictScalars](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/separableclosure-le-restrictscalars.md) | 232 | `result-track:de302e44180d71882407521028e268723c37d1b9cf17b279c7bc8dac24064199` |
| 23 | `theorem` | [separableClosure.eq_restrictScalars_of_isSeparable](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/separableclosure-eq-restrictscalars-of-isseparable.md) | 238 | `result-track:1fe00ae9e040ff52d42244a8aee26f24d1caaad97c41d87d751c2f14fc46f019` |
| 24 | `theorem` | [separableClosure.adjoin_le](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/separableclosure-adjoin-le.md) | 245 | `result-track:c42aea545525c7b7c07dd38d1cd137fe758f15541cb8300ba0bfbf050553148c` |
| 25 | `instance` | [IntermediateField.isSeparable_sup](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/intermediatefield-isseparable-sup.md) | 250 | `declaration-track:d815b6de062a7126322672a7a1f21a362a3df2c51cdc1d43daa20851df2309e1` |
| 26 | `instance` | [IntermediateField.isSeparable_iSup](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/intermediatefield-isseparable-isup.md) | 257 | `declaration-track:d73379e03ca132fc1a3a808bfabfe60089fb222911d868099362d826d6ee18c1` |
| 27 | `def` | [sepDegree](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/sepdegree.md) | 270 | `declaration-track:0ec4d7da36c6054c33edc5927edbf9437a75aff6b4d840b52cd5781bf3ebf5aa` |
| 28 | `def` | [insepDegree](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/insepdegree.md) | 275 | `declaration-track:5b25d6b03474e59dec720ed6560b413663d44077815d765c6ae04b72d0decdb2` |
| 29 | `def` | [finInsepDegree](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/fininsepdegree.md) | 280 | `declaration-track:0cd0b2c4cdc4a56e54046900e40d2ab1064a6e131a6c4539304b6923a3ddbd97` |
| 30 | `theorem` | [finInsepDegree_def'](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/fininsepdegree-def.md) | 282 | `result-track:14cc8a536866fea38892949e1520b63e06a180d1995491499da2cb4280350a97` |
| 31 | `instance` | [instNeZeroSepDegree](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/instnezerosepdegree.md) | 284 | `declaration-track:663f9c99aa26e5da68a38f65e708af260af28b878133599adac246c117f0bd67` |
| 32 | `instance` | [instNeZeroInsepDegree](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/instnezeroinsepdegree.md) | 286 | `declaration-track:6d2738f1e17f35c058f6facf5eab0816472ec180b12aea6e5813be803c0473a5` |
| 33 | `instance` | [instNeZeroFinInsepDegree](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/instnezerofininsepdegree.md) | 288 | `declaration-track:9c6271e3fd66a0b37369fccc654190e0ad3d0d55b4fecf26c737d71d2d74d187` |
| 34 | `theorem` | [lift_sepDegree_eq_of_equiv](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/lift-sepdegree-eq-of-equiv.md) | 293 | `result-track:8101a059fa30c85716adc6316d2b0090c3d0c39db5d8d1ba8ff883a99d5bffa1` |
| 35 | `theorem` | [sepDegree_eq_of_equiv](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/sepdegree-eq-of-equiv.md) | 298 | `result-track:95bce3ed45d3dc864d37cc2680fb98902d4abe04d5742d2a4405f7749fcc8051` |
| 36 | `theorem` | [sepDegree_mul_insepDegree](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/sepdegree-mul-insepdegree.md) | 304 | `result-track:f814bccbd365bcc225e6a67f0e4808935ee7932f42fe05852f5e3ac73c7c3b26` |
| 37 | `theorem` | [sepDegree_le_rank](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/sepdegree-le-rank.md) | 307 | `result-track:2a344fc7c59f72c3fc736359e4e183e2db1591c13622e9ce84f78ab9c05b686d` |
| 38 | `theorem` | [insepDegree_le_rank](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/insepdegree-le-rank.md) | 310 | `result-track:9862170a2c97d21cd5c56f06f030eb9fafe89c1dede592a34f31582671ba5f8d` |
| 39 | `theorem` | [lift_insepDegree_eq_of_equiv](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/lift-insepdegree-eq-of-equiv.md) | 315 | `result-track:a28388f98431e27ba15505a59dcb9fd5317d44af5b2317f8dddc2969427af741` |
| 40 | `theorem` | [insepDegree_eq_of_equiv](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/insepdegree-eq-of-equiv.md) | 320 | `result-track:22733511af8aba499b87881e99b0a88bf45dabe37735ac9c59efd185856dd557` |
| 41 | `theorem` | [finInsepDegree_eq_of_equiv](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/fininsepdegree-eq-of-equiv.md) | 326 | `result-track:371213a954b877c28fe468034536a41ab599f88c45e898c727a8f956cbfbb70b` |
| 42 | `theorem` | [sepDegree_self](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/sepdegree-self.md) | 332 | `result-track:e84784fed9c125b0f9f9739becc5f84ead25257c88f7e3cc7dc31d84bcb615ef` |
| 43 | `theorem` | [insepDegree_self](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/insepdegree-self.md) | 336 | `result-track:b5fee16abcdd083e5a71db15630ea48be6fd8077e642a657ff05b259f85cd602` |
| 44 | `theorem` | [finInsepDegree_self](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/fininsepdegree-self.md) | 340 | `result-track:c767adac6959964c8b7e675c2444f1d73b0ecf5deffd36e4b3226bda424e3735` |
| 45 | `theorem` | [sepDegree_bot](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/sepdegree-bot-source-edition-2.md) | 348 | `result-track:c9e8bc1f154d40599c5fb16f8bb7bda97fcedda98ea8ce2510854d767e10cc99` |
| 46 | `theorem` | [insepDegree_bot](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/insepdegree-bot.md) | 353 | `result-track:dbb5dad3e1f8cf036213ce206eeb14f4b8af0fe6f8cec79bcfbda31e30041e2c` |
| 47 | `theorem` | [finInsepDegree_bot](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/fininsepdegree-bot-source-edition-2.md) | 358 | `result-track:f9c1533ab1f506e0df686d0fe341445d22a1b32f88e1b71fc9d575f77daa580d` |
| 48 | `theorem` | [lift_sepDegree_bot'](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/lift-sepdegree-bot.md) | 365 | `result-track:940f084e8178a03aa0b3ba5587e084615ef405e30a0f148ac54bab865c528ba7` |
| 49 | `theorem` | [lift_insepDegree_bot'](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/lift-insepdegree-bot.md) | 369 | `result-track:697a6ea7c544a0add1d8039b26361545576da3a82aedb69c70d1089343565fc4` |
| 50 | `theorem` | [finInsepDegree_bot'](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/fininsepdegree-bot.md) | 376 | `result-track:7fa9757c413cf64eb1996f97b29ce095d1ff137a48b7b6639533968e206afd72` |
| 51 | `theorem` | [sepDegree_top](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/sepdegree-top.md) | 381 | `result-track:45218fb7bb5645f6c01f8018a6f2f1e3362674e5850d5235ff3809fffbde6ec0` |
| 52 | `theorem` | [insepDegree_top](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/insepdegree-top.md) | 385 | `result-track:32a86a3350dea65169c0b81b2c15c290ce83217c152a774561208f7ffe4e7c40` |
| 53 | `theorem` | [finInsepDegree_top](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/fininsepdegree-top.md) | 389 | `result-track:b94f3f4e7d35f154fd60320149835fad552289be0c9a8bb6744181eceb8e5910` |
| 54 | `theorem` | [sepDegree_bot'](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/sepdegree-bot.md) | 395 | `result-track:0c18290912453da808210e0a0226d17bc44939ade2f14544dbc7ecb23c5fa748` |
| 55 | `theorem` | [insepDegree_bot'](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/insepdegree-bot-source-edition-2.md) | 399 | `result-track:f16bc3e3ffe4852297a139256231e154af992137913f03a202c0c4662e5f6b49` |
| 56 | `lemma` | [Separable Closure Namespaced](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/insepdegree-top-le-insepdegree-of-isscalartower.md) | 403 | `result-track:5f180c986b49b1f32f1344b71bf4ba0343ee5a5eeb559fd719cb118e71f929b4` |
| 57 | `lemma` | [Separable Closure Namespaced](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/insepdegree-le-of-left-le.md) | 412 | `result-track:2b2b825cf04e0ad906f72122576b4c8f7e1fad2030b4b245840459d68922cf6e` |
| 58 | `lemma` | [Separable Closure Namespaced](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/fininsepdegree-top-le-fininsepdegree-of-isscalartower.md) | 419 | `result-track:cc98fe0388eb173f242a13d12849dbc5c9c5e3c5d5f6f98b82bdc6214be5ee14` |
| 59 | `lemma` | [finInsepDegree_le_of_left_le](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/fininsepdegree-le-of-left-le.md) | 428 | `result-track:bd1d7318142606c999d97160afdcdcb61d5b1f7a87a4b37504570780a61d233c` |
| 60 | `theorem` | [Algebra.IsSeparable.sepDegree_eq](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/algebra-isseparable-sepdegree-eq.md) | 439 | `result-track:b03a9a6797e32b2de9d3de605e65e8fc615e7b325c1d12f924b33679671685e0` |
| 61 | `theorem` | [Algebra.IsSeparable.insepDegree_eq](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/algebra-isseparable-insepdegree-eq.md) | 444 | `result-track:5a2de356a5549747bdd2ac2617fcd6d16f773a4b7a1483fa15dfc12d3020b054` |
| 62 | `theorem` | [Algebra.IsSeparable.finInsepDegree_eq](../../../../FieldTheoryAndPolynomials/SeparableClosureNamespaced.lean/declarations/algebra-isseparable-fininsepdegree-eq.md) | 448 | `result-track:ce436aae9252ad2df763a8f080f612532556b76173274a8b4d6ba4ed5df27c9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6e42e98892b789fe74957a541b4a65e9350558cf45419bd12b00af9c2d65e0ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/SeparableClosure/Variantdf5301054a03e42f16b073c61c64bfbdf786b4796c87fafa9f813a7d1b6892e2.lean","GRWTSK/_verification/specifications/Algebra/SeparableClosure/Variantdf5301054a03e42f16b073c61c64bfbdf786b4796c87fafa9f813a7d1b6892e2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
