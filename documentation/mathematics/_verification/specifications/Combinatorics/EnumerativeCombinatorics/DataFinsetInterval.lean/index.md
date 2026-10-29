# Verification target: Data Finset Interval

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ba251d7ed7ca10f97ff06bcfb84cf596fec57cf",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant5605a516c682e6564517087135d0df38f900266cfc3a14c7db69b9e12ec749d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetInterval.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetInterval.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ba251d7ed7ca10f97ff06bcfb84cf596fec57cf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant5605a516c682e6564517087135d0df38f900266cfc3a14c7db69b9e12ec749d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Interval/Variant5605a516c682e6564517087135d0df38f900266cfc3a14c7db69b9e12ec749d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Grade` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Powerset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instLocallyFiniteOrder](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetInterval.lean/declarations/instlocallyfiniteorder.md) | 35 | `declaration-track:3296a47040328a63c0a191af4c1c53d043a1f3e8e1880564dee2b62615781106` |
| 2 | `theorem` | [Icc_eq_filter_powerset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetInterval.lean/declarations/icc-eq-filter-powerset.md) | 53 | `result-track:39489fa55b44c19e919bd347eebe19ba502c90ea6b459728d1376e9cbc8b6325` |
| 3 | `theorem` | [Ico_eq_filter_ssubsets](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetInterval.lean/declarations/ico-eq-filter-ssubsets.md) | 56 | `result-track:7efd8d941362802529ca9a1fe0a8fe8c5db3b5dd6343438c1bc0fe8745a310ff` |
| 4 | `theorem` | [Ioc_eq_filter_powerset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetInterval.lean/declarations/ioc-eq-filter-powerset.md) | 59 | `result-track:dfae2d8c9cf7bc7e900aedca44f792e773e441b5fa34ad6592947cc47f0737ec` |
| 5 | `theorem` | [Ioo_eq_filter_ssubsets](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetInterval.lean/declarations/ioo-eq-filter-ssubsets.md) | 62 | `result-track:8a825c6efdd5689295fb3facf670513c366a76d21bfddf0ab78ffb6866b36a55` |
| 6 | `theorem` | [Iic_eq_powerset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetInterval.lean/declarations/iic-eq-powerset.md) | 65 | `result-track:ee6505d4b9b39a11bbc18550ce423af56e7b8f35a4ca78feb253a9766d4bf3fd` |
| 7 | `theorem` | [Iio_eq_ssubsets](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetInterval.lean/declarations/iio-eq-ssubsets.md) | 68 | `result-track:c57148bba42269ace5d070740e31da6f66bebfcb8357b63fd0c4c2259e2942e6` |
| 8 | `theorem` | [Icc_eq_image_powerset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetInterval.lean/declarations/icc-eq-image-powerset.md) | 73 | `result-track:a70cf652e82b03e351a037a5f8be014c8e1984b856af6102f6cb90cbb3da995e` |
| 9 | `theorem` | [Ico_eq_image_ssubsets](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetInterval.lean/declarations/ico-eq-image-ssubsets.md) | 82 | `result-track:a34ef98e51bdbfe9ab4ccf3f95d12331c6e29329eaea4d9da593dc8e58e2d31c` |
| 10 | `theorem` | [card_Icc_finset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetInterval.lean/declarations/card-icc-finset.md) | 92 | `result-track:0f5f0153ebbc9ef7d211d47469b37d4451fe6fef89947f75ef9e9b1c70d2b2b3` |
| 11 | `theorem` | [card_Ico_finset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetInterval.lean/declarations/card-ico-finset.md) | 100 | `result-track:794a94002f3175a64b144ca7097625d1a2a5f39b2364f39eccb98876d3629ff5` |
| 12 | `theorem` | [card_Ioc_finset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetInterval.lean/declarations/card-ioc-finset.md) | 104 | `result-track:5f0b8d3fcabedd638f00c254a4c900c225d3ed23c49700128a867151f8623a1f` |
| 13 | `theorem` | [card_Ioo_finset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetInterval.lean/declarations/card-ioo-finset.md) | 108 | `result-track:282d11c013ce1236bafa925f3a2c6fe6cb5d04b5dda19a1d52d13bb45431a629` |
| 14 | `theorem` | [card_Iic_finset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetInterval.lean/declarations/card-iic-finset.md) | 112 | `result-track:e374f49c96b12c7b293d3282ed3d06fbba2d177cf98c18e101058945855d3deb` |
| 15 | `theorem` | [card_Iio_finset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetInterval.lean/declarations/card-iio-finset.md) | 115 | `result-track:a696bb9971542e0a19579f90f511ea5e9905c9205b56b33059817bbe721ddb22` |
| 16 | `lemma` | [monotone_iff_forall_le_cons](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetInterval.lean/declarations/monotone-iff-forall-le-cons.md) | 126 | `result-track:1024540b60d65c7deb730e3c83451f45db5da41d3e41d1041e8dd29befba25dd` |
| 17 | `lemma` | [antitone_iff_forall_cons_le](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetInterval.lean/declarations/antitone-iff-forall-cons-le.md) | 131 | `result-track:5a1a5d7fe6dec9bea323dd482ca8b0cc3d1aece57a2f991f0be1e8027895f418` |
| 18 | `lemma` | [strictMono_iff_forall_lt_cons](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetInterval.lean/declarations/strictmono-iff-forall-lt-cons.md) | 136 | `result-track:b1fdb29037db682cf620cc87e8fe4aed4785e359199e041fc48570ac9a650ea7` |
| 19 | `lemma` | [strictAnti_iff_forall_cons_lt](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetInterval.lean/declarations/strictanti-iff-forall-cons-lt.md) | 141 | `result-track:18de35f1cb392b8329406fd75187948be43740cb705c774894e8b3dc2e323648` |
| 20 | `lemma` | [monotone_iff_forall_le_insert](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetInterval.lean/declarations/monotone-iff-forall-le-insert.md) | 152 | `result-track:3a8a20a2c0ecc06a26ea9cd4d841631222948db4e82bcc384b8c8c0096c2b6db` |
| 21 | `lemma` | [antitone_iff_forall_insert_le](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetInterval.lean/declarations/antitone-iff-forall-insert-le.md) | 157 | `result-track:9d67d95a6c85bdbe06e4dd0f06fe12c4f872adbfb2507e91be4c108dfec3482d` |
| 22 | `lemma` | [strictMono_iff_forall_lt_insert](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetInterval.lean/declarations/strictmono-iff-forall-lt-insert.md) | 162 | `result-track:a18f3b2179edc4fcb17a2de6ef7586d3e77e2cf814a7216e105d268eea2f9ce9` |
| 23 | `lemma` | [strictAnti_iff_forall_lt_insert](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetInterval.lean/declarations/strictanti-iff-forall-lt-insert.md) | 167 | `result-track:19b6c39896ab58197795871cf7623ec1b4862c27bbd77b125af916c94e14fdca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=74c899499b4a97d3fd8d789274b32db41123a541d24830750eede972beefa806 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant5605a516c682e6564517087135d0df38f900266cfc3a14c7db69b9e12ec749d8.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Interval/Variant5605a516c682e6564517087135d0df38f900266cfc3a14c7db69b9e12ec749d8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
