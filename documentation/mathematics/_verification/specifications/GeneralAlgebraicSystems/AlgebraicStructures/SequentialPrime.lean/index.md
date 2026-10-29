# Verification target: Sequential Prime

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7644e8659184af2ba98eb2e49d7d50d35bcd1d84",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7644e8659184af2ba98eb2e49d7d50d35bcd1d84`.

Source path: `GRWTSK/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Carrier.Address` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Intervals` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Nth` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/ext.md) | 22 | `result-track:24f2064d72b7a3378c92d26e5bc4c731400205198d535b43dd70aa516048994b` |
| 2 | `def` | [axesFrom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/axesfrom.md) | 34 | `declaration-track:369063b4c3c8392062bd2b92250381b45b7c2ea33902e4c37bd876164c0c9f1a` |
| 3 | `def` | [axisCardinalities](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/axiscardinalities.md) | 41 | `declaration-track:d57a927cf5cfc15fc0da45061740c55cf22efa30b42a1ce19b4f661e6c6fada8` |
| 4 | `theorem` | [axesFrom_positive](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/axesfrom-positive.md) | 45 | `result-track:90503ce3708d6ccb539a14b8b5b2188b8578cbbe037f1ff044a064ae2a0c65ee` |
| 5 | `theorem` | [axisCardinalities_positive](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/axiscardinalities-positive.md) | 59 | `result-track:b1c086752ad6ce073bc253a81d12c6712401d1be702b69a353ec332a8d7bfc83` |
| 6 | `def` | [CoordinateFiber](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/coordinatefiber.md) | 69 | `declaration-track:f72631f9e92e2b502c5512b0657be4361b8817db15c88bac76023ff36ba19041` |
| 7 | `def` | [cardinality](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/cardinality.md) | 76 | `declaration-track:2752d98992112d883bc15de1d188a0804b148ca4b1d88a79aebf2501fdbf3443` |
| 8 | `def` | [mixedRadix](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/mixedradix.md) | 81 | `declaration-track:17631fa72ff118e62d36410144e2a965e73aac3fa740ec874288ef924d77636e` |
| 9 | `def` | [zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/zero.md) | 87 | `declaration-track:4b2e00b0bd0ff0289dccf33d73806341a7ae18dc518ffa607c911114ac61e7fb` |
| 10 | `theorem` | [mixedRadix_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/mixedradix-zero.md) | 95 | `result-track:87a1bc9c170a7b7a24d862524191c254af171d2da3de09ff7283d34c4a1ac3ce` |
| 11 | `theorem` | [cardinality_positive](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/cardinality-positive.md) | 106 | `result-track:3f7c51caef2154baf90a491e9e0bad3661f9140b23a1d0016e5eabccdfbe05d9` |
| 12 | `def` | [ofNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/ofnat.md) | 118 | `declaration-track:2dce1c09c34cd3c7ad36c17cdc8dd82c8dafdc10d1071369444bbaa8d61d7b05` |
| 13 | `theorem` | [mixedRadix_ofNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/mixedradix-ofnat.md) | 126 | `result-track:31fb92297ad8dd4058d028e5647957d2895a5acd19c3028ccb315f3e70a2f5d3` |
| 14 | `theorem` | [mixedRadix_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/mixedradix-injective.md) | 149 | `result-track:98a2cc92fad732a78e51833f0da24da11aab234c5432906b8cf726d78726850d` |
| 15 | `theorem` | [mixedRadix_lt_cardinality](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/mixedradix-lt-cardinality.md) | 179 | `result-track:a1aeca782a065bc4f0aaa42ff6cf6f0ea173554b6b7db8b89d495c0e151fbbe7` |
| 16 | `def` | [mixedRadixEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/mixedradixequiv.md) | 203 | `declaration-track:e343bcbeefd9a4870a6ef95617986300407f91d4611e3e20237bb6af2ef8459f` |
| 17 | `theorem` | [mixedRadixEquiv_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/mixedradixequiv-apply.md) | 218 | `result-track:1a179584108155735bb6d6df694371ac9d244086babdc62ce7c8ef64fa32086c` |
| 18 | `def` | [triangular](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/triangular.md) | 230 | `declaration-track:29c41093fdd2a42de3ec09c77c7952cde9a8dc3272114a0262b5161f131fe97a` |
| 19 | `theorem` | [triangular_formula](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/triangular-formula.md) | 233 | `result-track:8825369ce74b1ab8a8ac6408456b95167baaf3682d0b9d864e26d981c50795fe` |
| 20 | `theorem` | [triangular_succ](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/triangular-succ.md) | 239 | `result-track:fa2b1ec97c74c6f10ca86fd69e8d04ef4123dd95fef08b408ceffd455572ba3c` |
| 21 | `theorem` | [triangular_strictMono](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/triangular-strictmono.md) | 243 | `result-track:af0e5b5d76877548b689b90ff2ccf8689e4715164aced2198f08a4c5d59ac2e3` |
| 22 | `theorem` | [pair_eq_triangular](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/pair-eq-triangular.md) | 248 | `result-track:d4587d9a24a4e70803406e7a5a1ae453e8743552792b5c65fa38388326173865` |
| 23 | `theorem` | [pair_lower](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/pair-lower.md) | 252 | `result-track:e070124c252d2e474c75ebf31fc95e5ab6f0029ac8d98b46a0e1d181fca93481` |
| 24 | `theorem` | [pair_upper](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/pair-upper.md) | 257 | `result-track:ee9baec703ba99dacbdb89897d008bb7126f5e15461f34afd1ab2b1abdf12c75` |
| 25 | `theorem` | [pair_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/pair-injective.md) | 262 | `result-track:0f8c96b2dadc84d58d10b178512d6faec409e503bf1294e9cc673a2f58143fb5` |
| 26 | `theorem` | [pair_injective₂](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/pair-injective-source-edition-2.md) | 290 | `result-track:222597c49c9c3f7a1f2ff742a42de087c38f91123cfed1ab24cef7544b19c2e1` |
| 27 | `theorem` | [finiteSequenceCode_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/finitesequencecode-injective.md) | 300 | `result-track:849e40f988cfa7b37eaccd7d44aaa20a5c601f4f8c2c8f4555e36d2a4a1cfde4` |
| 28 | `theorem` | [specificationCode_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/specificationcode-injective.md) | 324 | `result-track:b3d5395b6ed313d83e30c3fb22d5ba567a8897149fa7b17e8de497c8c3f8094c` |
| 29 | `structure` | [SequentialPrimeCarrierAddress](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/sequentialprimecarrieraddress.md) | 331 | `declaration-track:8dfe9e8d95fabec57f10ede97ca27c433ad604c484c92414e3a091141ee37a8c` |
| 30 | `theorem` | [ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/ext-source-edition-2.md) | 339 | `result-track:89b8a251411716d0379403d2caed50e755ebc65f6b5a672f3669149be6552f6a` |
| 31 | `def` | [code](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/code.md) | 353 | `declaration-track:48c742b64f670a6d942510d7e696c6f43116322cccef9582405a185cc3b74716` |
| 32 | `theorem` | [code_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/code-injective.md) | 358 | `result-track:8e2e623b22d957e9a5b43e9c9b856722e8873cfe5193b6dd5dc54e6181e399c8` |
| 33 | `def` | [unitSpecification](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/unitspecification.md) | 381 | `declaration-track:d1ea070d46a36669a16ff295f2df363263a45bbda836615a341eac6ee3b376dd` |
| 34 | `def` | [unitCoordinate](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/unitcoordinate.md) | 388 | `declaration-track:78e2806aab01f1ed3fd7ae2da50b45781cb612b2a507ae02a14b69fb282a84fe` |
| 35 | `def` | [occurrenceEmbedding](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/occurrenceembedding.md) | 394 | `declaration-track:83bfdbca28f26a2397cd45db47d4b3f44f2e782466f50187b866d36362e56aae` |
| 36 | `def` | [AddressImage](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/addressimage.md) | 401 | `declaration-track:3b2eca87662a9e47a2a359494aa17c47dffcd482ed7f6e060613095d2ec9bae3` |
| 37 | `theorem` | [addressImage_infinite](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/addressimage-infinite.md) | 403 | `result-track:0be4353861ee1a8f7cf2c2430770342d29206015c5a5293b989fbd6a24e5b15f` |
| 38 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/instance.md) | 410 | `declaration-track:5e70a37d51078d960581f3e3bbfccf07668a4a2ac5122c5665c9cd2a30ca9226` |
| 39 | `def` | [increasingImageEnumeration](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/increasingimageenumeration.md) | 414 | `declaration-track:de8868c675f384b593e1d682efd1ff06e7f4a0bc4cbc67a43f7b010f4fed91e1` |
| 40 | `theorem` | [increasingImageEnumeration_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/increasingimageenumeration-coe.md) | 417 | `result-track:23e6e1cd1308bdef9c2249da340d9a476e7aa030f4fffac6f4bc286cc1869888` |
| 41 | `def` | [filteredEnumeration](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/filteredenumeration.md) | 426 | `declaration-track:2c268183920f7de5bf3eac96ca069496a8ec092ab4e3a968bbaea7cda6dfac03` |
| 42 | `theorem` | [code_filteredEnumeration](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/code-filteredenumeration.md) | 431 | `result-track:1e1446e6f8ac73303ecc7143faffa2d2caf2119b83f53d6ef66a9cc172c06a38` |
| 43 | `def` | [canonicalEnumeration](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/canonicalenumeration.md) | 440 | `declaration-track:280a1c3a8a431010f60aba6f3664c2cfb2da8ea829841cd3b75ad1d3875f6a6d` |
| 44 | `theorem` | [code_canonicalEnumeration](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/code-canonicalenumeration.md) | 451 | `result-track:d6cfd5d4467d08d592b6288b3386f93add3e394baef7cd2d3ba5313ce37dc091` |
| 45 | `theorem` | [canonicalEnumeration_code_mem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/canonicalenumeration-code-mem.md) | 456 | `result-track:b4a82f752f0319ef991eb9aef1e5b716b819e09607b25427dc0a202a078cad82` |
| 46 | `theorem` | [canonicalEnumeration_increasing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/canonicalenumeration-increasing.md) | 462 | `result-track:9b7bbc028f68748aa8a7cda36aca76db8712fc921e9025160d9b088af6c46b60` |
| 47 | `def` | [addressImageCount](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/addressimagecount.md) | 469 | `declaration-track:d4deef00ffbb4ed5dd4e31a5ad4ba253e0de1b60423f8d90361b6037d7b1a0d5` |
| 48 | `theorem` | [canonicalEnumeration_inverse_count](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrime.lean/declarations/canonicalenumeration-inverse-count.md) | 473 | `result-track:c134b5e86eba800f19b0ae33febc41f8fb808298ee227752277351c047818de6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=05dd3eb21e3b527711bbf54fbfdeb0d6ec3683f983c1b7c9819effdd28e4e3aa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean","GRWTSK/_verification/specifications/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
