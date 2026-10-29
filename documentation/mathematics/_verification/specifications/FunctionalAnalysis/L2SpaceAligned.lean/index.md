# Verification target: L2 Space Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd3c2190d4244b48b8beb6401f4c61dee8c741d1",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variantc36ad931c9f6bd65a3ba4a16c2d53dac372866db36782486b62e02cf1e4762f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/L2SpaceAligned.lean/index.md) · [Full source](../../../../FunctionalAnalysis/L2SpaceAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd3c2190d4244b48b8beb6401f4c61dee8c741d1`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variantc36ad931c9f6bd65a3ba4a16c2d53dac372866db36782486b62e02cf1e4762f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/L2Space/Variantc36ad931c9f6bd65a3ba4a16c2d53dac372866db36782486b62e02cf1e4762f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Projection` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.lpSpace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/macro-rules.md) | 91 | `declaration-track:364641aa66e85da76c3c4ec579501a13ea5ceef7fae8ecce804990074abb7bdc` |
| 2 | `theorem` | [summable_inner](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/summable-inner.md) | 112 | `result-track:f2522aabcbfb74dfe974b8e3ae427d873595b7d9c8afe9d666df8ca7394a0379` |
| 3 | `instance` | [instInnerProductSpace](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/instinnerproductspace.md) | 121 | `declaration-track:de598555f9206b47da6db8e920287f0abbd6639d78edcd674e6e7f8d5236cd0b` |
| 4 | `theorem` | [inner_eq_tsum](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/inner-eq-tsum.md) | 162 | `result-track:729615e7036c9f39272ffdb0cc0cb08c92a2b1cbba1bf4a7e78c1a19dcba5df0` |
| 5 | `theorem` | [hasSum_inner](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/hassum-inner.md) | 166 | `result-track:478909a7e218ef38d8cd584936990a9848debaaef97954dd350552771772f711` |
| 6 | `theorem` | [inner_single_left](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/inner-single-left.md) | 170 | `result-track:906196aef5a2ad20bd32d9ff8f000fdb8746677171a56e0ed92573bb654ea85f` |
| 7 | `theorem` | [inner_single_right](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/inner-single-right.md) | 180 | `result-track:da9d084161fb73fea01bc9aa48e58c061d95364dcf856f52ce93989cfaef0ee9` |
| 8 | `theorem` | [summable_of_lp](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/summable-of-lp.md) | 193 | `result-track:572cce8034ea08c8e9118f83dfc56dd42b41a432750543edefb53e831d427cf6` |
| 9 | `def` | [linearIsometry](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/linearisometry.md) | 202 | `declaration-track:b8d6f80953e880c1882dba8089302e437645956b1cf19dacbba323ff5f4b5241` |
| 10 | `theorem` | [linearIsometry_apply](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/linearisometry-apply.md) | 222 | `result-track:c12de916fcaf2323d89fedbf165fb31449a6b911ccaba773cf55094217603312` |
| 11 | `theorem` | [hasSum_linearIsometry](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/hassum-linearisometry.md) | 226 | `result-track:77dc7b41b5f6fa120e451ca2a6e7e774ef0446797ef59056cc71b00b1a1d45f8` |
| 12 | `theorem` | [linearIsometry_apply_single](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/linearisometry-apply-single.md) | 232 | `result-track:d2e633ed826b5c71916b0f65ba68424b7132654a71ecaa9b34ac8dcd7b70d7bb` |
| 13 | `theorem` | [linearIsometry_apply_dfinsupp_sum_single](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/linearisometry-apply-dfinsupp-sum-single.md) | 244 | `result-track:2fdb20c2b43ab123a04306bc36209d06423f73d25ddd5f4aaffd867cb8919ad8` |
| 14 | `theorem` | [range_linearIsometry](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/range-linearisometry.md) | 255 | `result-track:ad4aa1c63fe83a7d824774592f852855595061fd0bd50fd136af5b713b2c390d` |
| 15 | `structure` | [IsHilbertSum](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/ishilbertsum.md) | 290 | `declaration-track:2bf0af7d74a4d9bbe7d8b0abe07f2ec72c852e4e9a33fff03aea9310091071eb` |
| 16 | `theorem` | [IsHilbertSum.mk](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/ishilbertsum-mk.md) | 302 | `result-track:2b561445e18da5cd376a336851f753b12c83bcafdad04aecef8cd3f8a7267580` |
| 17 | `theorem` | [IsHilbertSum.mkInternal](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/ishilbertsum-mkinternal.md) | 313 | `result-track:edc39a78bd604a5a0b592eb173b09d378d1a694d0766becfdbf780b8103c8f99` |
| 18 | `def` | [IsHilbertSum.linearIsometryEquiv](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/ishilbertsum-linearisometryequiv.md) | 324 | `declaration-track:8d7ea81b230961041d1cfc9580476e5e008a1e01fcd5beaf6530fe3b1a9f2fd0` |
| 19 | `theorem` | [IsHilbertSum.linearIsometryEquiv_symm_apply](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/ishilbertsum-linearisometryequiv-symm-apply.md) | 331 | `result-track:f81da3a42af6fd252f683b9a50d47836b0dc6019c72fd7398b82bad0144beb6a` |
| 20 | `theorem` | [IsHilbertSum.hasSum_linearIsometryEquiv_symm](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/ishilbertsum-hassum-linearisometryequiv-symm.md) | 339 | `result-track:f625b8eea8e90b9c81b97c9eff99d27fb19884c5c87c988fbc7b4f6e4a72f78e` |
| 21 | `theorem` | [IsHilbertSum.linearIsometryEquiv_symm_apply_single](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/ishilbertsum-linearisometryequiv-symm-apply-single.md) | 348 | `result-track:b51042f92bb8b1008ae02c3c7c6e41fc1ad46d80021729c6b494f47fb115a176` |
| 22 | `theorem` | [IsHilbertSum.linearIsometryEquiv_symm_apply_dfinsupp_sum_single](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/ishilbertsum-linearisometryequiv-symm-apply-dfinsupp-sum-single.md) | 357 | `result-track:399511c024806fbb5978def9534977848274cb21284e48b55dce133b5db727fe` |
| 23 | `theorem` | [IsHilbertSum.linearIsometryEquiv_apply_dfinsupp_sum_single](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/ishilbertsum-linearisometryequiv-apply-dfinsupp-sum-single.md) | 367 | `result-track:11c888f415ae93ad17dff9fb3efc1404c1904ec50e1fdb0c513d3627c11674cb` |
| 24 | `theorem` | [Orthonormal.isHilbertSum](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/orthonormal-ishilbertsum.md) | 378 | `result-track:ec9e75c40a1020865995cb9eccc16fb78f18c85aadafc133c3a94b7b2d0d15cc` |
| 25 | `theorem` | [Submodule.isHilbertSumOrthogonal](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/submodule-ishilbertsumorthogonal.md) | 386 | `result-track:9809e2198b98c70465dd14cdc3b64884ebc00fc390368cfdd2b20ef272a6d089` |
| 26 | `structure` | [HilbertBasis](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/hilbertbasis.md) | 409 | `declaration-track:feaf40dabd33db8b55efe3d66d1480c6970643ced156a66f39a971c6c8efd2db` |
| 27 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/instance.md) | 418 | `declaration-track:dde22a4197fe4f75777070cc8f6ec5afbd54919c8d65edb3fe33182ea800ccb0` |
| 28 | `instance` | [instCoeFun](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/instcoefun.md) | 422 | `declaration-track:8fb517d07365757df961c8ef4aa16a7cc2c920638cebf683aa03df47f2185971` |
| 29 | `theorem` | [repr_symm_single](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/repr-symm-single.md) | 426 | `result-track:9033101cbc390da5a648ec48bbc3920cc82264198891ff488e894e94c8bcbbcd` |
| 30 | `theorem` | [repr_self](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/repr-self.md) | 432 | `result-track:c4d694865580d2d72090c7658bf939bbb5caabb8dc9db7116eda124719ccb41b` |
| 31 | `theorem` | [repr_apply_apply](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/repr-apply-apply.md) | 437 | `result-track:2775300ad7a003ee8bdb352c62c0a9d4e6a8a2a5b4fb691b5df0f040fd8ede66` |
| 32 | `theorem` | [orthonormal](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/orthonormal.md) | 444 | `result-track:596301761e9eb1e633b719693737913c8a4fcd96bc1fbe7647a2778a1a2340f2` |
| 33 | `theorem` | [hasSum_repr_symm](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/hassum-repr-symm.md) | 452 | `result-track:3756f52581e4c9b69c900575549ea08f98aee39443b229ebfc798e4beead1ccc` |
| 34 | `theorem` | [hasSum_repr](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/hassum-repr.md) | 470 | `result-track:a2a16eca4a888f5ac356bc67c05abd36623b1c0e262852e2500642977fa21c35` |
| 35 | `theorem` | [dense_span](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/dense-span.md) | 475 | `result-track:79544a312a5379087104f32ffda19a86662b8508a900844535f1c35d2b013828` |
| 36 | `theorem` | [hasSum_inner_mul_inner](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/hassum-inner-mul-inner.md) | 489 | `result-track:4e2b2994230558a755e1ff7b2b0ea6c7c2d0578fb05bc39f023f62d041a4dd8f` |
| 37 | `theorem` | [summable_inner_mul_inner](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/summable-inner-mul-inner.md) | 496 | `result-track:e71b01fe3560af976492fe89b6a710eefd0ff7dd201783aa159b91df18f30e32` |
| 38 | `theorem` | [tsum_inner_mul_inner](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/tsum-inner-mul-inner.md) | 501 | `result-track:733a26cdcf81266b3474fa29398b07f527b8c619659abb7e394ef714d5891443` |
| 39 | `def` | [toOrthonormalBasis](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/toorthonormalbasis.md) | 509 | `declaration-track:43f70132f3f77e3ec62d00d751fbca14ca0b2a40a16877019974bb81e58ca2b6` |
| 40 | `theorem` | [coe_toOrthonormalBasis](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/coe-toorthonormalbasis.md) | 519 | `result-track:b315dbf37f0deb2feff4800280caa616444db8983e977e37465515dab0cf5460` |
| 41 | `theorem` | [hasSum_orthogonalProjection](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/hassum-orthogonalprojection.md) | 524 | `result-track:f80fd7338ff29b54f2fc5b41db0a944fde9e34aa9e6dacedfa2f972ce9298782` |
| 42 | `theorem` | [finite_spans_dense](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/finite-spans-dense.md) | 531 | `result-track:6320477e1316c95d7799393cf6b6b28ddaa19d5c2a2a4c9e49f384f4270d5035` |
| 43 | `def` | [mk](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/mk.md) | 543 | `declaration-track:d720330df54a28d2ba34099b5943773f77fcf107ecabaa4b4e5a953ef3e38750` |
| 44 | `theorem` | [_root_.Orthonormal.linearIsometryEquiv_symm_apply_single_one](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/root-orthonormal-linearisometryequiv-symm-apply-single-one.md) | 547 | `result-track:34a0292bc9b6cd5bd45f93d4b125e3c543edcf73e27571ed172a28272fda91d7` |
| 45 | `theorem` | [coe_mk](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/coe-mk.md) | 554 | `result-track:e8d6d62d0b9f4e53596403c826e87700a5b8115fcbae6fd950e96f921acf2b5b` |
| 46 | `def` | [mkOfOrthogonalEqBot](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/mkoforthogonaleqbot.md) | 561 | `declaration-track:a419e4a95ff4bcb737d7372582045cbe4db02fb07a2b2cd8c3333cd638ef029a` |
| 47 | `theorem` | [coe_mkOfOrthogonalEqBot](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/coe-mkoforthogonaleqbot.md) | 567 | `result-track:3dc2df78392441394e8a0b8be4496b0eabbba0852344bc40bd9d696e80736ba7` |
| 48 | `def` | [_root_.OrthonormalBasis.toHilbertBasis](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/root-orthonormalbasis-tohilbertbasis.md) | 575 | `declaration-track:273c05b41bc45d1af625ee447d67194e460767b31db19e2bccc288a965179c3a` |
| 49 | `theorem` | [_root_.OrthonormalBasis.coe_toHilbertBasis](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/root-orthonormalbasis-coe-tohilbertbasis.md) | 583 | `result-track:5a119ba8096d9139ca88dd3c3ef486848954ac17e5cabfd926ca27e747386b8f` |
| 50 | `theorem` | [_root_.Orthonormal.exists_hilbertBasis_extension](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/root-orthonormal-exists-hilbertbasis-extension.md) | 589 | `result-track:61b4d0490eea7cc03bb97a2b2bb01d807e9f329ec87cea020b643998933bb12e` |
| 51 | `theorem` | [_root_.exists_hilbertBasis](../../../../FunctionalAnalysis/L2SpaceAligned.lean/declarations/root-exists-hilbertbasis.md) | 601 | `result-track:1b63e1150500435bc4584bb8aba41a580d4b0ad74e82bf72a1649e5007628706` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3efc9fdf8380cc769ee485134e99c6ad93922c65eb1dbd48483a1eecb74e841c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variantc36ad931c9f6bd65a3ba4a16c2d53dac372866db36782486b62e02cf1e4762f8.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/L2Space/Variantc36ad931c9f6bd65a3ba4a16c2d53dac372866db36782486b62e02cf1e4762f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
