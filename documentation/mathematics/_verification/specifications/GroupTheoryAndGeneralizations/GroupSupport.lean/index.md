# Verification target: Group Support

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a423209308d38caed77f0287fa6b896d8454316",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Support/Variant5cab00dbef9f849b54168891b699ddf231a38a3b11324fa5c355eea4f71db8c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a423209308d38caed77f0287fa6b896d8454316`.

Source path: `GRWTSK/Algebra/GroupTheory/Support/Variant5cab00dbef9f849b54168891b699ddf231a38a3b11324fa5c355eea4f71db8c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Support/Variant5cab00dbef9f849b54168891b699ddf231a38a3b11324fa5c355eea4f71db8c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Notation.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Image` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulSupport](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport.md) | 31 | `declaration-track:f199c5537f8b6b6f800018b820cec3b3939bea9da645626323aaa6ea82f8446b` |
| 2 | `theorem` | [mulSupport_eq_preimage](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-eq-preimage.md) | 34 | `result-track:1aad39e5f6c8fce74b62a8d1352a14917ca9b8c31f0c9b61db2f57ac058e4d26` |
| 3 | `theorem` | [notMem_mulSupport](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/notmem-mulsupport.md) | 38 | `result-track:bfa715f3fd23a552bd5b5fb80ac87103696f98bcbe4b0bf07cfe215f327c3c9e` |
| 4 | `theorem` | [compl_mulSupport](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/compl-mulsupport.md) | 47 | `result-track:f8d55a36a3a51d7bd8203f39503bd3dc8f8cb64266108378c022be4caaca2aa8` |
| 5 | `theorem` | [mem_mulSupport](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mem-mulsupport.md) | 51 | `result-track:8f31986b1a17ae399f5bedb9712bea28fd98f962f80d0de10e16d2272ed232b2` |
| 6 | `theorem` | [mulSupport_subset_iff](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-subset-iff.md) | 55 | `result-track:8af546a08255256880ddefaa20248de5f783f7521ffd07cb5b25736d1d2fb7fd` |
| 7 | `theorem` | [mulSupport_subset_iff'](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-subset-iff-source-edition-2.md) | 59 | `result-track:a4b37dc2dc22b06ad797e130214fdfed9dc7abe89b1812540d34fa18eb2f1d75` |
| 8 | `theorem` | [mulSupport_eq_iff](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-eq-iff.md) | 64 | `result-track:29e4187f4e0c829256d7c893b1be29076d143568f6e9314215f94c08878f8fc6` |
| 9 | `theorem` | [ext_iff_mulSupport](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/ext-iff-mulsupport.md) | 70 | `result-track:c9bc6b4ca7a6d054b52fb8fb1f1507fe51343a0351844fcebeca23200e454ef3` |
| 10 | `theorem` | [mulSupport_update_of_ne_one](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-update-of-ne-one.md) | 77 | `result-track:43e2dfe15a89a1e46e2ea27b9b658a2f3959c392c967e841de131defa40f8a70` |
| 11 | `theorem` | [mulSupport_update_one](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-update-one.md) | 82 | `result-track:8510c08bac8d6d9464154a0dde6b4566fc9c2fbf80cdb117ee4e64426bd2c4fe` |
| 12 | `theorem` | [mulSupport_update_eq_ite](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-update-eq-ite.md) | 87 | `result-track:0db9e20a2890c97beff1a5be1c599ca39f87709e35bb1f310b3058375c163b1e` |
| 13 | `theorem` | [mulSupport_extend_one_subset](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-extend-one-subset.md) | 92 | `result-track:1e725db60ff73ab92555e53cb7a5d4c3c5e0cd0b0bebc0b7b4519477f6cdeaa0` |
| 14 | `theorem` | [mulSupport_extend_one](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-extend-one.md) | 102 | `result-track:cfa25ba480cb7bb621eb98dcca7082f54c6e197edb008a605e55abe2e04c4be7` |
| 15 | `theorem` | [mulSupport_disjoint_iff](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-disjoint-iff.md) | 108 | `result-track:d1080f6e67028672276f70b05e12759527b6a13e6060b1a73bc1aed11bcf4be3` |
| 16 | `theorem` | [disjoint_mulSupport_iff](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/disjoint-mulsupport-iff.md) | 114 | `result-track:205cc1fda0768e3cd364ffd1e2076ea633c33aadfd3fc5ca27fedf1ae6d7389f` |
| 17 | `theorem` | [mulSupport_eq_empty_iff](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-eq-empty-iff.md) | 119 | `result-track:3f150d8f05dcd4ba7431e8295b5a2a55f6b4d76b1e7d73d1785b1314e3a1dfde` |
| 18 | `theorem` | [mulSupport_nonempty_iff](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-nonempty-iff.md) | 124 | `result-track:acb8da3e2201d7d17581fbdf75d7ed002bfdef0e35df764f24b8bb6699f1730b` |
| 19 | `theorem` | [range_subset_insert_image_mulSupport](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/range-subset-insert-image-mulsupport.md) | 128 | `result-track:453e8e9bbb442cd99139133192dfde554ad2d1af901d69fb2865297d24cff120` |
| 20 | `lemma` | [range_eq_image_or_of_mulSupport_subset](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/range-eq-image-or-of-mulsupport-subset.md) | 134 | `result-track:91c647d7e847dc052220b2dd7422940f69d1d08038c0bbd7212283fbf9ebc009` |
| 21 | `theorem` | [mulSupport_one'](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-one-source-edition-2.md) | 144 | `result-track:b94f85f353cc1b24c0e7dbb68c27eeec091327efe8861124763e404a87f8a407` |
| 22 | `theorem` | [mulSupport_one](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-one.md) | 148 | `result-track:527b817f3a6dac914ef4d1bd20d57b8082f79c994a6eab8ad44cc9070dde079a` |
| 23 | `theorem` | [mulSupport_const](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-const.md) | 152 | `result-track:c6eeb4afc8dfb5dc89b9d997238ae37fe326808812edcd0a58c004abb35b1127` |
| 24 | `theorem` | [mulSupport_binop_subset](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-binop-subset.md) | 157 | `result-track:561eddcf92dab9c46da44762f264a9d19ea17f9e5b7077901d4e68f8a7892bed` |
| 25 | `theorem` | [mulSupport_comp_subset](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-comp-subset.md) | 162 | `result-track:997c31265df4c4b3096865bf60f587e01c84e8ffda38bf5430d9f7d746e6446c` |
| 26 | `theorem` | [mulSupport_subset_comp](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-subset-comp.md) | 166 | `result-track:a2be341daf71eb9d217b80c5c95e2e9213f02878f705362738a5f7b355abb3d3` |
| 27 | `theorem` | [mulSupport_comp_eq](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-comp-eq.md) | 170 | `result-track:2f3f0ea9bfd9c886ea3f41c4b3bde4640df666a5c3350c733f04a46a26a1717f` |
| 28 | `theorem` | [mulSupport_comp_eq_of_range_subset](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-comp-eq-of-range-subset.md) | 175 | `result-track:1380252391fa209b9beb5db61a47557e0d99aaf2491917a8b8c298006efdf943` |
| 29 | `theorem` | [mulSupport_comp_eq_preimage](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-comp-eq-preimage.md) | 181 | `result-track:128be50b54ddb4d60e4eb82a3f14ba8d6d6b7b0b802c5e25d7040964537840b4` |
| 30 | `theorem` | [mulSupport_prod_mk](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-prod-mk.md) | 186 | `result-track:1ea7df3939b47255bf20a32291d4f40b22b979676def811968f3873cfd3d5bea` |
| 31 | `theorem` | [mulSupport_prod_mk'](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-prod-mk-source-edition-2.md) | 192 | `result-track:a10291c4aca9df276dfb9f4f5a844ce95402860f64221561147c3a11288ead78` |
| 32 | `theorem` | [mulSupport_along_fiber_subset](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-along-fiber-subset.md) | 197 | `result-track:76191be0737b793b5fd3a6287aa9275d8381fec12eecf6e949470b3c7b22c873` |
| 33 | `theorem` | [mulSupport_curry](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-curry.md) | 202 | `result-track:5d6d7ead04a583fc8ced5204760450837d6d31d9f0384cffcbe001a60e879fd3` |
| 34 | `theorem` | [mulSupport_curry'](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-curry-source-edition-2.md) | 207 | `result-track:e4a08434b8a7c02aebc470f76ba1e458cfde97d50f06dcc029483c109f46018b` |
| 35 | `theorem` | [mulSupport_mul](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-mul.md) | 214 | `result-track:3c1f90bffe120fb930234b8b49002d4a684de73300beae413072ef8855188fe6` |
| 36 | `theorem` | [mulSupport_pow](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-pow.md) | 219 | `result-track:03a8f7915311dc69f824676038d8d6ca40ad306562172d8f44b1dc8625d6be21` |
| 37 | `theorem` | [mulSupport_inv](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-inv-source-edition-2.md) | 231 | `result-track:6c7034224e86a76fad74dd1f4ff8a8c13c625fa3c31ee90522dee071f0061fce` |
| 38 | `theorem` | [mulSupport_inv'](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-inv.md) | 235 | `result-track:18fe27a3b1bb61e4fd962cef8a05ec474cf977703c3e0e41f601d7e13598e6f1` |
| 39 | `theorem` | [mulSupport_mul_inv](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-mul-inv.md) | 239 | `result-track:804ff5e600565f2606fa580336dec38ab3c7a22cf12455b3dd7a282c4a86a5f4` |
| 40 | `theorem` | [mulSupport_div](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-div.md) | 243 | `result-track:edec9472fd4f384ddb5de409084e649721b13c3c9156ef436a6ac7b82d655307` |
| 41 | `theorem` | [image_inter_mulSupport_eq](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/image-inter-mulsupport-eq.md) | 257 | `result-track:ebee90ef59971e36c1b33463db6490d33813d58e7345e7a380018b4a9e67814e` |
| 42 | `theorem` | [mulSupport_mulSingle_subset](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-mulsingle-subset.md) | 270 | `result-track:51160d7e4cfc16996786ff60f3035c80ee3cff5393a93dc21269c120fb0067e1` |
| 43 | `theorem` | [mulSupport_mulSingle_one](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-mulsingle-one.md) | 274 | `result-track:105dc41939a1abdbbf11d52a4a9b9db50c6162432b999b26d62344635cfae648` |
| 44 | `theorem` | [mulSupport_mulSingle_of_ne](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-mulsingle-of-ne.md) | 277 | `result-track:59af42910324dfc9f0feb08ec1cef7d15885c6843360b4ce9eb4fe4598d4e0d3` |
| 45 | `theorem` | [mulSupport_mulSingle](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-mulsingle.md) | 282 | `result-track:92fd8475203d70ec58109dc5f4daae5f638d98c4f803330aa2eb471a621cbeb2` |
| 46 | `theorem` | [mulSupport_mulSingle_disjoint](../../../../GroupTheoryAndGeneralizations/GroupSupport.lean/declarations/mulsupport-mulsingle-disjoint.md) | 286 | `result-track:d4e5bf9761abd87a6a10da923cd6c177b59cc20b7cf306d5e0a2099cb31d653b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c0200b5fd4a96c7d745bd198164ca32ab2f4b32223d8f6b58b91b3af4e5bd92 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Support/Variant5cab00dbef9f849b54168891b699ddf231a38a3b11324fa5c355eea4f71db8c2.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Support/Variant5cab00dbef9f849b54168891b699ddf231a38a3b11324fa5c355eea4f71db8c2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
