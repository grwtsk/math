# Verification target: Divisibility Packing Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ecf9787f8252235ddb5388ddfb80153dbb6a140d",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantcf95799b44c35836d21cfbfbd1513f29f0e0b554933725fc10103e25257662b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ecf9787f8252235ddb5388ddfb80153dbb6a140d`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantcf95799b44c35836d21cfbfbd1513f29f0e0b554933725fc10103e25257662b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantcf95799b44c35836d21cfbfbd1513f29f0e0b554933725fc10103e25257662b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.QuotientRing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Totient` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeSupport](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/primesupport.md) | 26 | `declaration-track:1a2e45c97d0afe7ae7e0c473334080baaac7a7ffb433af31e731f60f475c2057` |
| 2 | `theorem` | [mem_primeSupport](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/mem-primesupport.md) | 28 | `result-track:8b33dc2b9983ef9b21d4a5a711193e32289ffe8f481c072dfb65dcf2a9393abb` |
| 3 | `def` | [Modulus](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/modulus.md) | 33 | `declaration-track:3269de55eee42878370828596435389dd8a08475a5af09129794f0940209d294` |
| 4 | `theorem` | [modulus_pos](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/modulus-pos.md) | 35 | `result-track:d2f3c6ab5e8dd049c2c5384f79d8b9fecc8c3f85e5ef92b0bcb083320842f54c` |
| 5 | `instance` | [modulus_neZero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/modulus-nezero.md) | 40 | `declaration-track:b2500b45514ba6203f0c5a775abcf106289de0cfaeccb756c66ad080cadaeac8` |
| 6 | `instance` | [prime_neZero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/prime-nezero.md) | 42 | `declaration-track:bda4be6db9e25aded8bf4613b295b44d4f16b70ff9308ed7bb3633d06da287c3` |
| 7 | `def` | [forbiddenResidues](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/forbiddenresidues.md) | 46 | `declaration-track:91d93b997b7f6d51b0fff91cf90117a2a3a632cb89badaa2da276fb890e48b4e` |
| 8 | `def` | [localForbiddenCount](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/localforbiddencount.md) | 50 | `declaration-track:abc859ece982c94c492c21b50993f49701083bfb9fb10e4f53e1bf6da30fcd86` |
| 9 | `theorem` | [localForbiddenCount_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/localforbiddencount-le.md) | 52 | `result-track:40aff6056d579c5923ce66e45eb5ef97eb698cb0e99c449b2a7535ec6b2e9ef2` |
| 10 | `def` | [localReduction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/localreduction.md) | 57 | `declaration-track:ca100c9220a819c333e8d8e778f6406250e99a1e8ccd19070ee4f209b748b43f` |
| 11 | `def` | [RawAdmissible](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/rawadmissible.md) | 61 | `declaration-track:5acf9a66755b19eb421cf69d0c1f1d3aa7989d18593bc8e479136bc215bdedc8` |
| 12 | `def` | [RawPacking](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/rawpacking.md) | 65 | `declaration-track:819209ed36849438649c18a381cfd66fc29986c0759ed44cd32e29c8db6ac7b0` |
| 13 | `instance` | [rawPackingFintype](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/rawpackingfintype.md) | 67 | `declaration-track:7d87778bcd8283de586ff93824607fd58dd0a2b004705eed5beeab608d07b578` |
| 14 | `theorem` | [primeSupport_pairwise](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/primesupport-pairwise.md) | 72 | `result-track:78812172fa7a7a30a54dee3fe750f8e29948190f8e1c761cc4b575a4b02bd638` |
| 15 | `def` | [residueEquiv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/residueequiv.md) | 80 | `declaration-track:7791d1c56d81e97c94c979ce7bc517a6d3487f2efa6e5ca8952ab49d9f2962a2` |
| 16 | `theorem` | [residueEquiv_apply](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/residueequiv-apply.md) | 85 | `result-track:90df4d6ee5bc78d175a5378cde79607078d581ab782ec80607ba02fdffdbb068` |
| 17 | `def` | [rawPackingEquiv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/rawpackingequiv.md) | 92 | `declaration-track:9f8849b0c2a1ae2b98dc4bc18d5fa4d94992fe4b1ddc0df7a8f33e213578c1e9` |
| 18 | `theorem` | [rawPacking_card](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/rawpacking-card.md) | 102 | `result-track:0e8834a7c551856946ce9d1a9d45f23a595063f67b9c740d6003775c4e33747a` |
| 19 | `def` | [rawDensity](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/rawdensity.md) | 111 | `declaration-track:f61d3396b7553b573899beac64baf3d3eb0078ed5be9d5cad211a5fd8aa7e9ce` |
| 20 | `theorem` | [rawPacking_density](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/rawpacking-density.md) | 114 | `result-track:bf743656ab9062e45767e38f71ca10d9138292c9e988436912d81e166dca835e` |
| 21 | `def` | [IntegerSurvivor](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/integersurvivor.md) | 126 | `declaration-track:124f7298bb3ae35114154510e531e33cc0536ae12c73e91c4d15bd0ea021982e` |
| 22 | `theorem` | [integerSurvivor_mono](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/integersurvivor-mono.md) | 129 | `result-track:816929072963752415b89338eb5216846b1eeee92a62a3879a71abe0661155b7` |
| 23 | `theorem` | [integerSurvivor_iff_rawAdmissible](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/integersurvivor-iff-rawadmissible.md) | 137 | `result-track:dd97ba354b04e2202feb61b8d0860cdf6ef1c5fb55eb1f2903909ba699143a44` |
| 24 | `theorem` | [integerSurvivor_iff_product](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/integersurvivor-iff-product.md) | 160 | `result-track:efddb24fc602f06c8aeab85af81e7afd45caed05c740cb786df6d9008f13c3cd` |
| 25 | `theorem` | [primeSupport_mono](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/primesupport-mono.md) | 174 | `result-track:00e2809b865b8e459a77df771325d5872102fef54530cb5c7ad63da7796780fd` |
| 26 | `theorem` | [modulus_dvd_of_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/modulus-dvd-of-le.md) | 179 | `result-track:c2d9e7317a95f0490328c91757d421ca1bfd0d43f39090e689467c0c62475908` |
| 27 | `def` | [reduction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/reduction.md) | 183 | `declaration-track:6fa4c2f5c238bac2850d313071b081388049977d11f62903e9037dc4171e2f61` |
| 28 | `theorem` | [localReduction_reduction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/localreduction-reduction.md) | 186 | `result-track:82491bcd789cc7f5146199cf74a110ad01a4e99ddfb35f58db3ee2360c503506` |
| 29 | `theorem` | [rawAdmissible_reduce_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/rawadmissible-reduce-iff.md) | 194 | `result-track:233646229681a13a7e20d04222fe437d3d1fe0b857b05569f34dc38dedb821f2` |
| 30 | `theorem` | [rawAdmissible_of_finer](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/rawadmissible-of-finer.md) | 201 | `result-track:501ada36433e25be9a1eb32327c6bded0bae0b5ec3923da4b1bb231274c012f8` |
| 31 | `theorem` | [singleton_forbidden_count](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/singleton-forbidden-count.md) | 208 | `result-track:55028e1c060a6465bef04776f018f1d264004d5e06041e05bbe876854dda3000` |
| 32 | `theorem` | [singleton_density](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/singleton-density.md) | 211 | `result-track:70aa9ca4608ff3137c403af9de54f002e3fe03fbe982c22d2db88c425b3fef10` |
| 33 | `theorem` | [totient_prime_product](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/totient-prime-product.md) | 215 | `result-track:13e521f9c086b8c984c7e3279f171cd241dacd59814404845d9df2601e372cb8` |
| 34 | `theorem` | [singleton_card_totient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/singleton-card-totient.md) | 229 | `result-track:a22c968e38d908bd1de92c29673b16d97e022018c71275e92e996a99b15dfd42` |
| 35 | `theorem` | [singleton_density_totient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/singleton-density-totient.md) | 236 | `result-track:531e7a44932447d960610c1e16d09cf4a01bef5fa89e6b395953564438ec352a` |
| 36 | `theorem` | [twin_forbidden_two](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/twin-forbidden-two.md) | 241 | `result-track:c0e09f17adb5ac0072a333b9b558cbca08859e80adc9b3470a289a6ac63dda5f` |
| 37 | `theorem` | [twin_forbidden_large](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/twin-forbidden-large.md) | 245 | `result-track:be486b6c30472c1d4094fb8cf0025c34fe35bbf81f5b8e4268a2846786a09aad` |
| 38 | `theorem` | [twin_density](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/twin-density.md) | 251 | `result-track:99c88035991dd4bc91436a61864ac9219ab12c8cd060a939aeb2b0a6b8f69215` |
| 39 | `theorem` | [composite_raw_survivor](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/composite-raw-survivor.md) | 267 | `result-track:ba767a63e2733e26595120452c75ceabf29100592080db9696c1d0115dbdaa13` |
| 40 | `theorem` | [visible_prime_raw_excluded](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/visible-prime-raw-excluded.md) | 272 | `result-track:1616ba984263193906568c57d35d558a727b9f580b02093187a96d9a345c49a0` |
| 41 | `theorem` | [translated_prime_raw_excluded](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/translated-prime-raw-excluded.md) | 277 | `result-track:e6af1a5cc5caa41edd00789cda4906afcd774c1a863348c3a028ee9712c58112` |
| 42 | `theorem` | [empty_support_card](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/empty-support-card.md) | 286 | `result-track:6a2755a5556313252b85c8c5691d013c4276ad882298752287588f8eef8dcdaa` |
| 43 | `theorem` | [twin_five_card](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingNamespacedEdition1.lean/declarations/twin-five-card.md) | 291 | `result-track:cb9109d87b01ce945ff34026003cb692163602937269547fb28ce8771b8869fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=71bccefaee71d285da8c0f9b05eed38d30072b1f4d3c0fb1115f5260de2a2cb3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantcf95799b44c35836d21cfbfbd1513f29f0e0b554933725fc10103e25257662b3.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantcf95799b44c35836d21cfbfbd1513f29f0e0b554933725fc10103e25257662b3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
