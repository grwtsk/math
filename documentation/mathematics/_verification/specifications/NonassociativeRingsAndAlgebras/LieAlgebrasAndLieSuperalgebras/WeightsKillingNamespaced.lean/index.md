# Verification target: Weights Killing Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e936a60adddbd0c8ed0d435f9ece241c015f7783",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Killing/Variant0f11545d0d0a586aa724a77ece653279279f70d70c1d15ad7abc9d203adf8a46.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e936a60adddbd0c8ed0d435f9ece241c015f7783`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Killing/Variant0f11545d0d0a586aa724a77ece653279279f70d70c1d15ad7abc9d203adf8a46.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Killing/Variant0f11545d0d0a586aa724a77ece653279279f70d70c1d15ad7abc9d203adf8a46.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Derivation.Killing` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Killing` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Sl2` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Weights.Chain` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Semisimple` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.JordanChevalley` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [restrict_killingForm](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/restrict-killingform.md) | 49 | `result-track:e219ce6d8775223caadf2a3431665633f79b36b3d630fc28c2f5db2162c291db` |
| 2 | `lemma` | [ker_restrict_eq_bot_of_isCartanSubalgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/ker-restrict-eq-bot-of-iscartansubalgebra.md) | 59 | `result-track:97c600bdd130678de72577a6ccc482e9f19123281adf76aeab543e4510c00331` |
| 3 | `lemma` | [ker_traceForm_eq_bot_of_isCartanSubalgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/ker-traceform-eq-bot-of-iscartansubalgebra.md) | 73 | `result-track:ab7f6cd59840616d97f12a71071ab15cb21e6f2c5879d45bf2baa898f7fa24e5` |
| 4 | `lemma` | [traceForm_cartan_nondegenerate](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/traceform-cartan-nondegenerate.md) | 78 | `result-track:df549021f5f60d3d370bd33fd873c0821c0ddfe16f0460279912c1892bb754b3` |
| 5 | `instance` | [instIsLieAbelianOfIsCartanSubalgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/instislieabelianofiscartansubalgebra.md) | 85 | `declaration-track:f0e23a9eb837423abdb0cfdf2c8719892a13989f9519250316dd6fdb9798a42f` |
| 6 | `lemma` | [killingForm_apply_eq_zero_of_mem_rootSpace_of_add_ne_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/killingform-apply-eq-zero-of-mem-rootspace-of-add-ne-zero.md) | 106 | `result-track:fc3fcef09d9f17b8263fb66a4f01ee31f585a2b4b052c6b09414c389b6740ec3` |
| 7 | `lemma` | [mem_ker_killingForm_of_mem_rootSpace_of_forall_rootSpace_neg](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/mem-ker-killingform-of-mem-rootspace-of-forall-rootspace-neg.md) | 130 | `result-track:61bb0f5ccb7ff600287c31757ef654deae72d14bed0549c8c59e62f74a08d32b` |
| 8 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/instance.md) | 161 | `declaration-track:a72f2b2c12327635207e611cc6a41b2bbf84e6eb34971e05bf81f8ebdae331b3` |
| 9 | `lemma` | [coe_neg](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/coe-neg.md) | 173 | `result-track:745cf9d95701c1bfa030b8e2f791982d135c7a66379842bd08ff0e6ff7b46e3a` |
| 10 | `lemma` | [IsZero.neg](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/iszero-neg-source-edition-2.md) | 175 | `result-track:2419839e4b23ec7f59fc383f4d926f0064fc0ddea969df70721b0a801da65382` |
| 11 | `lemma` | [isZero_neg](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/iszero-neg.md) | 177 | `result-track:14b4e9be80d82d1569c5dec1efbc27bbe335de90de3a8df5f64b783d3da13d92` |
| 12 | `lemma` | [IsNonZero.neg](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/isnonzero-neg.md) | 179 | `result-track:9b14db83b74caf3b3810889f3660a2d80cfb790b21380506fc56444911d6ad22` |
| 13 | `lemma` | [isNonZero_neg](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/isnonzero-neg-source-edition-2.md) | 181 | `result-track:b40a0d3f570848f0d7f04236799db4fd072623045edc357a7803a014ca0ed4da` |
| 14 | `lemma` | [toLinear_neg](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/tolinear-neg.md) | 183 | `result-track:02d101caf956bc43e1cd6ea5d8d692fb49ab343c073a230be3661b35935ada5d` |
| 15 | `lemma` | [eq_zero_of_isNilpotent_ad_of_mem_isCartanSubalgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/eq-zero-of-isnilpotent-ad-of-mem-iscartansubalgebra.md) | 205 | `result-track:8a578e39522830e39f75cdd7b2e5c9378f46b55282aa524b28f86a571e711f73` |
| 16 | `lemma` | [corootSpace_zero_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/corootspace-zero-eq-bot.md) | 218 | `result-track:ee58a4de6857a5428a823ac787a9ee8865ddb20cc4ba72f58eb82479f2ac8d5f` |
| 17 | `def` | [cartanEquivDual](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/cartanequivdual.md) | 232 | `declaration-track:1cb93a6a910b5a546957a1ef6a65c65775847c18c6ad63b515a7d56ffff6299a` |
| 18 | `def` | [coroot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/coroot.md) | 239 | `declaration-track:91851c17e56b8f880ea5db428be2edcdcca677f2026abe7f315514a2916e8ee4` |
| 19 | `lemma` | [traceForm_coroot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/traceform-coroot.md) | 242 | `result-track:a69ba9a6f2a62aad3638952025a006a78269cdb30cd99176d194e7097c6e90a2` |
| 20 | `lemma` | [coroot_neg](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/coroot-neg.md) | 249 | `result-track:ffa04f300598b7f61db6c95963ef6f3bba166fc0cf5243c28fc5c3c9b53310d9` |
| 21 | `lemma` | [lie_eq_killingForm_smul_of_mem_rootSpace_of_mem_rootSpace_neg_aux](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/lie-eq-killingform-smul-of-mem-rootspace-of-mem-rootspace-neg-aux.md) | 255 | `result-track:0468cf567aa74461ea0e02503f98ba66b40320534a6eb07ceb664e8cb70347f2` |
| 22 | `lemma` | [cartanEquivDual_symm_apply_mem_corootSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/cartanequivdual-symm-apply-mem-corootspace.md) | 275 | `result-track:ea1ff8109674b040e7316b457eef833c839652ca70939180cb922edeaea83fe2` |
| 23 | `lemma` | [span_weight_eq_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/span-weight-eq-top.md) | 290 | `result-track:2206fe88ba4ab74adaa4937d255cbffe6d4f7d10198ae99cb00f03c2abcd8555` |
| 24 | `lemma` | [span_weight_isNonZero_eq_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/span-weight-isnonzero-eq-top.md) | 298 | `result-track:4d5f862caec5f2a8f134bbcac6477782331bc4e79ec54e6306c2d279322cbc89` |
| 25 | `lemma` | [iInf_ker_weight_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/iinf-ker-weight-eq-bot.md) | 310 | `result-track:0adc9365866534fa237d6fe67645268c7e803763d9a88ed750e83925ff5b85bc` |
| 26 | `lemma` | [isSemisimple_ad_of_mem_isCartanSubalgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/issemisimple-ad-of-mem-iscartansubalgebra.md) | 321 | `result-track:dc31c30f62ab8969d34ace94fa5eae3c5ffe3b870276c9034b47272a80a40a3a` |
| 27 | `lemma` | [lie_eq_smul_of_mem_rootSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/lie-eq-smul-of-mem-rootspace.md) | 377 | `result-track:04204ff737c45be120c6b7eea53b3fd1bc54f5dd94bebbb18bef743d03c91348` |
| 28 | `lemma` | [lie_eq_killingForm_smul_of_mem_rootSpace_of_mem_rootSpace_neg](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/lie-eq-killingform-smul-of-mem-rootspace-of-mem-rootspace-neg.md) | 386 | `result-track:2abdea59135e9061ce5df5c8d7f568cc4593bff80cf679cb0f31cf97a161121d` |
| 29 | `lemma` | [coe_corootSpace_eq_span_singleton'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/coe-corootspace-eq-span-singleton.md) | 392 | `result-track:01d34762ec568a07d5ca490a581d780c1b97463f6043f6b1e638c34b91689eaf` |
| 30 | `lemma` | [eq_zero_of_apply_eq_zero_of_mem_corootSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/eq-zero-of-apply-eq-zero-of-mem-corootspace.md) | 422 | `result-track:e81b7a45b73a866d3dab811629c26c88422b5385dace971b4f96ddc51560df95` |
| 31 | `lemma` | [disjoint_ker_weight_corootSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/disjoint-ker-weight-corootspace.md) | 433 | `result-track:ce62bfbee1e69e5335c8c5eb33a18d6c3ca39d2bd054a3fae8932e6bed65d47d` |
| 32 | `lemma` | [root_apply_cartanEquivDual_symm_ne_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/root-apply-cartanequivdual-symm-ne-zero.md) | 440 | `result-track:85dc1fd62ad179a69dfd677b658e017756abb7c0116b4c901ba6176287a66505` |
| 33 | `lemma` | [root_apply_coroot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/root-apply-coroot.md) | 448 | `result-track:13a07894f33d86bc20e18c345ca8aaff68fea70e834738c42c1d62b8922fac0c` |
| 34 | `lemma` | [coroot_eq_zero_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/coroot-eq-zero-iff.md) | 453 | `result-track:59d4ed213250b67551b17aecf2b2a458d1ef35578cef621662cbc8892ca01ec8` |
| 35 | `lemma` | [coroot_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/coroot-zero.md) | 461 | `result-track:8448b06abfd590696e07ebaf431a3a1b3d8d684fec4fdafa228229a31638be92` |
| 36 | `lemma` | [coe_corootSpace_eq_span_singleton](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/coe-corootspace-eq-span-singleton-source-edition-2.md) | 463 | `result-track:89f4d6e37e7220a5014aecbbc92d77e579763b2521e2d4ee4546745d4df8efae` |
| 37 | `lemma` | [corootSpace_eq_bot_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/corootspace-eq-bot-iff.md) | 475 | `result-track:964c8428c605a349177a27e7e3efe84846fda3bca8b7a7e5af167046a7a1481e` |
| 38 | `lemma` | [isCompl_ker_weight_span_coroot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/iscompl-ker-weight-span-coroot.md) | 479 | `result-track:ae4ed24b5890c69f28adc8733fa637507a08f59da21c5cd69a0a7c9bf1f28c05` |
| 39 | `lemma` | [traceForm_eq_zero_of_mem_ker_of_mem_span_coroot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/traceform-eq-zero-of-mem-ker-of-mem-span-coroot.md) | 491 | `result-track:182babc784ba73e72bd42643671a633c7c7c0dab719e82586cc8189a2b75dbfb` |
| 40 | `lemma` | [orthogonal_span_coroot_eq_ker](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/orthogonal-span-coroot-eq-ker.md) | 506 | `result-track:1288f7de3af5668c2faf6586afa1bab0405b6ba196e235530c222192fd4a36dc` |
| 41 | `lemma` | [coroot_eq_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/coroot-eq-iff.md) | 522 | `result-track:c1d73b52c0d60245f41fa9daf005d1e40e7791af4c65d4c77fa295fde5186fa6` |
| 42 | `lemma` | [exists_isSl2Triple_of_weight_isNonZero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/exists-issl2triple-of-weight-isnonzero.md) | 544 | `result-track:26d2bb0d335afb67af61035d62bf66b2a5a68d2cf32cef636133f33f6c04a35c` |
| 43 | `lemma` | [Weights Killing Namespaced](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/h-eq-coroot.md) | 572 | `result-track:8b9b6348cf6da4e9f85725e01086dffbd15af61e3db3dd9f8cf259790877447d` |
| 44 | `lemma` | [finrank_rootSpace_eq_one](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/finrank-rootspace-eq-one.md) | 597 | `result-track:5c6f9657920e1c050c271caaefb3816bf0803ee38e86bd83f3e42da2a6a0647f` |
| 45 | `def` | [sl2SubalgebraOfRoot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/sl2subalgebraofroot.md) | 623 | `declaration-track:9823845ee6d6465f3bd1073b2069e7a6c76e1e20c6b4c85a4aa50a69e33ee061` |
| 46 | `lemma` | [mem_sl2SubalgebraOfRoot_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/mem-sl2subalgebraofroot-iff.md) | 628 | `result-track:de52196330277f5a40a77735b488171c004ad425fda957c87b49943377466815` |
| 47 | `abbrev` | [Weights Killing Namespaced](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/root.md) | 656 | `declaration-track:a0ad873127781c70e5e52e6612c8e10a32c65c233f78921496086d8919553e22` |
| 48 | `lemma` | [restrict_killingForm_eq_sum](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingNamespaced.lean/declarations/restrict-killingform-eq-sum.md) | 658 | `result-track:6dc26c35d545c2b72172a7c812e116173ef9f607f8cc358ba68127e1a7f5dcd7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=26a02d45127c2c416ecf758036fe1a35ddcab53e5cca20f90bdf1bc2b8ca688b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Killing/Variant0f11545d0d0a586aa724a77ece653279279f70d70c1d15ad7abc9d203adf8a46.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Killing/Variant0f11545d0d0a586aa724a77ece653279279f70d70c1d15ad7abc9d203adf8a46.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
