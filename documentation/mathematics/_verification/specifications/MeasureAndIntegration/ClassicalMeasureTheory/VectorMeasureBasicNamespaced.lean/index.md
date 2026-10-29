# Verification target: Vector Measure Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9532c65dfde44fa423a57349d3b0bf521b0e9f45",
  "lexical_observation_count": 157,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant7c0e93e9ae70d81d9cc495fe1b92c80e51cc84f60949446e150c6e17d81dbdf1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9532c65dfde44fa423a57349d3b0bf521b0e9f45`.

Source path: `GRWTSK/Analysis/MeasureTheory/Basic/Variant7c0e93e9ae70d81d9cc495fe1b92c80e51cc84f60949446e150c6e17d81dbdf1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Basic/Variant7c0e93e9ae70d81d9cc495fe1b92c80e51cc84f60949446e150c6e17d81dbdf1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Real` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Typeclasses.Finite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Module` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [VectorMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/vectormeasure.md) | 65 | `declaration-track:ea9b70ebf1dec91904a5e3f47ceb45de396f36cada97768b1b6c3318ed12125c` |
| 2 | `abbrev` | [SignedMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/signedmeasure.md) | 78 | `declaration-track:02ece2b3d72bbb2ff7c9dc7f0cfaf663f8a42a91d1007f25048609f44d9f5fc4` |
| 3 | `instance` | [instCoeFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/instcoefun.md) | 91 | `declaration-track:bd37b695ee57fc9ccbc0e05d0a07ee339c726c66e594263bdf21a967c1bc7f9b` |
| 4 | `theorem` | [empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/empty.md) | 97 | `result-track:fbb1eaa551c13a1cab9b7fd4a1aa8c5584402a0055879df210567e9af1bb89af` |
| 5 | `theorem` | [not_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/not-measurable.md) | 100 | `result-track:1c85636c9ce6cf8c95925c617990730d746666f380bfc1576aeb34f2204825a9` |
| 6 | `theorem` | [m_iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/m-iunion.md) | 103 | `result-track:44bd63b046f90e06096a93605ed4193835944d29ff590f48168295ae413b95ec` |
| 7 | `theorem` | [coe_injective](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/coe-injective.md) | 107 | `result-track:7df4efe41048b7db98252db98d1e50f235c8d5f8cca32361990a497f0cc8eb0b` |
| 8 | `theorem` | [ext_iff'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/ext-iff.md) | 112 | `result-track:b9dd1910c6df76c93c8a80925340a7137ef26a96cf3a28cf53cad284c67a38cd` |
| 9 | `theorem` | [ext_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/ext-iff-source-edition-2.md) | 115 | `result-track:e68c24667081f7c7f855c0d563351b8a0acdcd93dccf1118f81d28aed14201e0` |
| 10 | `theorem` | [ext](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/ext.md) | 126 | `result-track:d1aa2eeb4eb0225af7ef85191b171d6cbc29fa72fa0ed8140562f93eee51f4ae` |
| 11 | `theorem` | [hasSum_of_disjoint_iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/hassum-of-disjoint-iunion.md) | 131 | `result-track:6d72cae0687d1e41048da4c47d25c8157d8c08035e50467d92ef7e9e32c46b62` |
| 12 | `theorem` | [of_disjoint_iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/of-disjoint-iunion.md) | 143 | `result-track:d0e05c55edea864fd0f348dfcfe35baa4571142bf2e42d6013a85cffad91fbec` |
| 13 | `theorem` | [of_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/of-union.md) | 147 | `result-track:14977b0d822c39e7d6f6300e44f290cb7791469f27b3f2b28a3820de60281dc5` |
| 14 | `theorem` | [of_add_of_diff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/of-add-of-diff.md) | 152 | `result-track:ca49b20b61508e946b42549baafdd04602a6babbac0a7f0dcce013d0a38b14ad` |
| 15 | `theorem` | [of_diff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/of-diff.md) | 156 | `result-track:f2aa866d5c226b3716b3b804a2667924b6d6d94cbc4712079c9fa5e2331f65dd` |
| 16 | `theorem` | [of_diff_of_diff_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/of-diff-of-diff-eq-zero.md) | 161 | `result-track:ea98fc075f4e20dd93dc161da64dcd993c17a61db7ea8aa90ff39a7ad1f296ea` |
| 17 | `theorem` | [of_iUnion_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/of-iunion-nonneg.md) | 179 | `result-track:490bb7dfe3f9346af62a0c234279c7d852d1a790fb3a99412ead42bd95135db9` |
| 18 | `theorem` | [of_iUnion_nonpos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/of-iunion-nonpos.md) | 185 | `result-track:7d68fbe47cd6a88f257e5c3a6100500a540228ac98756aa1782be80b3cf5eb1c` |
| 19 | `theorem` | [of_nonneg_disjoint_union_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/of-nonneg-disjoint-union-eq-zero.md) | 191 | `result-track:ff73d9e05002ebbec80382928573298b8bfc9eff72795d0e167e18f565349948` |
| 20 | `theorem` | [of_nonpos_disjoint_union_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/of-nonpos-disjoint-union-eq-zero.md) | 197 | `result-track:7e6f150ce255f7aaa9e55e91dde24e721d40da48d48412eb09454a1f82c83de8` |
| 21 | `def` | [smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/smul-source-edition-2.md) | 212 | `declaration-track:c369b7b71d6a97384745f61798876edc4f7465baea2d09ba48d6a7c2185c6280` |
| 22 | `instance` | [instSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/instsmul.md) | 218 | `declaration-track:a098ac8b03a25dc06876f20427d9e24b68dcf819b55a73735cd4159b099f4afc` |
| 23 | `theorem` | [coe_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/coe-smul.md) | 222 | `result-track:9781eb1ed25d75456f9507b6678042469546e5e5cb463b32f5db601b0d669ea8` |
| 24 | `theorem` | [smul_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/smul-apply.md) | 224 | `result-track:934327357a2754e03e9b34af05920ef820ffe5fc41cdd49f1058b0e5f08578e4` |
| 25 | `instance` | [instZero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/instzero.md) | 232 | `declaration-track:05686bb405fe0d9dd010d607d93773b633784d25ff1ca8210bcf385eed242719` |
| 26 | `instance` | [instInhabited](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/instinhabited.md) | 235 | `declaration-track:d571051caade05599b4fb43b2a405c8247a96d54303b0bcc3ce3b4c123597dbf` |
| 27 | `theorem` | [coe_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/coe-zero.md) | 239 | `result-track:d70b41745d73946ee238fa1b58d9ae7d898d32c7b6d75b206bbe093a51100e47` |
| 28 | `theorem` | [zero_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/zero-apply.md) | 241 | `result-track:86106a2ea3519a2db9727dfb52fd86519fafdc13b678dea074b04e2005204293` |
| 29 | `def` | [add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/add.md) | 246 | `declaration-track:5cad4c4b7f0100d698cdf3bf8ba6973ce3d5c2d3d6edad4a6c1500a80cc7e409` |
| 30 | `instance` | [instAdd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/instadd.md) | 252 | `declaration-track:e6a91d96e2b9b36b00838669c0c36d9081dd9f7c5717e4227e214b32979af1fe` |
| 31 | `theorem` | [coe_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/coe-add.md) | 256 | `result-track:94885a217f9e18ef45a8c55c825768133c9385b515c925f9a2d281eb479d9bca` |
| 32 | `theorem` | [add_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/add-apply.md) | 258 | `result-track:75802f9f80856e763c77a25f3af081f25eb0e282f36e740a5b5bfbee81ed591c` |
| 33 | `instance` | [instAddCommMonoid](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/instaddcommmonoid.md) | 260 | `declaration-track:4fe474b4ea8ac7d7b40081c448d187efd68ee2892fa2670e4957252fd76d234a` |
| 34 | `def` | [coeFnAddMonoidHom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/coefnaddmonoidhom.md) | 265 | `declaration-track:c4ca9eb98a5e89d80e5abdc8947e8bb47754f8943bb2bb74638684392134d3cd` |
| 35 | `def` | [neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/neg.md) | 277 | `declaration-track:ce9c17640ec0a73d4c00a9c0706e247bba9983c971d23e86547297c54cd63ac8` |
| 36 | `instance` | [instNeg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/instneg.md) | 283 | `declaration-track:2455e9d583c1c759ee4d17735666146b38d48716ba8a0c5a0bc504cdc48e86fe` |
| 37 | `theorem` | [coe_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/coe-neg.md) | 287 | `result-track:cddd8f05802ea8b8ff7d134bf22c19063d3fa25aa4b43879b5b84a813fb63127` |
| 38 | `theorem` | [neg_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/neg-apply.md) | 289 | `result-track:4c5470d2ae77a3cd5f9f24d1f939caf56036fc424de2a73820ad4845c89d7fb4` |
| 39 | `def` | [sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/sub-source-edition-2.md) | 292 | `declaration-track:e247a5c10dc451b802b2c9cb9ae5517bee624cb11d4df21fff3153b4312383d8` |
| 40 | `instance` | [instSub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/instsub.md) | 298 | `declaration-track:d1df212a7af6f652b59b1a8b29debfc7347573b02e3c22fc62e07e41d6d29a71` |
| 41 | `theorem` | [coe_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/coe-sub.md) | 302 | `result-track:e138d34ee7ebbc45a3c2da4e66d7a257b7a8c4e559ac26ba27fac9c8579a81d5` |
| 42 | `theorem` | [sub_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/sub-apply.md) | 304 | `result-track:2f555c7f409dbb4e4489f4ccefe213db9d40157f1e1311fa9f11dcf026197171` |
| 43 | `instance` | [instAddCommGroup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/instaddcommgroup.md) | 306 | `declaration-track:ae3d57edfd683453a7da9ba86b072b77992dd646058fc93658e3fd9ea3d304bf` |
| 44 | `instance` | [instDistribMulAction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/instdistribmulaction.md) | 317 | `declaration-track:ed9cf0136f2cfd71258b9958b709141f9543ff0c72b8161c31732e657eec8067` |
| 45 | `instance` | [instModule](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/instmodule.md) | 327 | `declaration-track:3549218c88c28286f6bd07fed2089c9a6bf59300bae640f2671e63735d8e886f` |
| 46 | `def` | [toSignedMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/tosignedmeasure.md) | 339 | `declaration-track:d6a11632c922f5a0f958eb8f1934b82f19bb1273a8f958a62695f894d49154c1` |
| 47 | `theorem` | [toSignedMeasure_apply_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/tosignedmeasure-apply-measurable.md) | 348 | `result-track:02b96a33cfec04d66fc43779616556d0793829d79e076ec234462a4c3c709e68` |
| 48 | `theorem` | [toSignedMeasure_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/tosignedmeasure-congr.md) | 354 | `result-track:81762640e34fd2ecd52b3c0a211a36da7499ff47f13443656688c8cdc8c81302` |
| 49 | `theorem` | [toSignedMeasure_eq_toSignedMeasure_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/tosignedmeasure-eq-tosignedmeasure-iff.md) | 358 | `result-track:8927b0664f0d2007c8328e456b18ff63f4ba07c506cae5f1726bd3ab139fc161` |
| 50 | `theorem` | [toSignedMeasure_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/tosignedmeasure-zero.md) | 368 | `result-track:9dd14ccdc1e68809b661aaef523bedb8ab0dc499860a3636b7b1be4061f4a80f` |
| 51 | `theorem` | [toSignedMeasure_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/tosignedmeasure-add.md) | 373 | `result-track:97cb5f81807f74eb388e9f57899cad6e1db411c354c652d523a899c2b1e0f4bf` |
| 52 | `theorem` | [toSignedMeasure_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/tosignedmeasure-smul.md) | 381 | `result-track:3fbabce33aafd317719a8e8da6da9e7a66c21a6b29636d319a9078e59eac3254` |
| 53 | `def` | [toENNRealVectorMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/toennrealvectormeasure.md) | 391 | `declaration-track:ee1cf44f61670471cd04497cd491efca06d26b76f1c34bc79a3f3588ad1d60a5` |
| 54 | `theorem` | [toENNRealVectorMeasure_apply_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/toennrealvectormeasure-apply-measurable.md) | 400 | `result-track:81541e93b1b29ffe83bfea95c3fa13853e66f37125b4aa6686c143b128e82c37` |
| 55 | `theorem` | [toENNRealVectorMeasure_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/toennrealvectormeasure-zero.md) | 405 | `result-track:170221b00448c9d7fbdfae4c569e29ebd0f9199fcaf665b8f85852f28eb78923` |
| 56 | `theorem` | [toENNRealVectorMeasure_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/toennrealvectormeasure-add.md) | 410 | `result-track:a2fcf8e750ca159df7303207ccea72f83c94043b9e306cff09ad2ad8c4d0b56d` |
| 57 | `theorem` | [toSignedMeasure_sub_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/tosignedmeasure-sub-apply.md) | 416 | `result-track:b04571ad8d14f86ac05e2880a6e9b30063cf49ec6c1c503a9c4019ba65eb358a` |
| 58 | `def` | [ennrealToMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/ennrealtomeasure.md) | 431 | `declaration-track:1eb0f52aba0ab46e98aea1302314d9dc4c2d75d305a7e0ab1d9a2de3cc54f3d0` |
| 59 | `theorem` | [ennrealToMeasure_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/ennrealtomeasure-apply.md) | 434 | `result-track:355dbf91fd6d1493248816c3a2c73fad9833601b7d692ae3842df3ac9d65e38d` |
| 60 | `theorem` | [Vector Measure Basic Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/toennrealvectormeasure-ennrealtomeasure.md) | 439 | `result-track:19049dc698b9d836e5d7a943d6b799652528cd807dfeac7ec5faa4c0b71fadd0` |
| 61 | `theorem` | [ennrealToMeasure_toENNRealVectorMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/ennrealtomeasure-toennrealvectormeasure.md) | 445 | `result-track:26bd428f04e50e3795c1b1af9f3a840576551f27309811772371917ccb7a94b0` |
| 62 | `def` | [equivMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/equivmeasure.md) | 453 | `declaration-track:b67c03bf14d29b4c09e3ed0a0985f1ead3a1f03350d8d3e8331ab813abc55dcb` |
| 63 | `def` | [map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/map-source-edition-2.md) | 469 | `declaration-track:85f9b034f83ffc8ba966a232a351132b7b8060ec83f9e8bc418bcf3bd95a68f5` |
| 64 | `theorem` | [map_not_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/map-not-measurable.md) | 481 | `result-track:406924f71cd854d7fb36423f042655b55dedbdffb5a53740b5c41cf59c7b6cae` |
| 65 | `theorem` | [map_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/map-apply.md) | 484 | `result-track:229ac7ab917f6d997bd9298f6744c2c9f6ec95e3b3334084a52c5997e8d20f45` |
| 66 | `theorem` | [map_id](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/map-id.md) | 490 | `result-track:41ff3408ea27e030ff21cd2c35a30de11ec1c966f84b283437cca35bb7e090e2` |
| 67 | `theorem` | [map_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/map-zero.md) | 494 | `result-track:7b5ffae5970ec26b9e65f823de4e1462da32c68d677ce6fcbd74c12d42688fb3` |
| 68 | `def` | [mapRange](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/maprange-source-edition-2.md) | 506 | `declaration-track:c90be2608176789f3f24d0b8eb552111c0789c2df67e59941a9e9c92e36d4129` |
| 69 | `theorem` | [mapRange_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/maprange-apply.md) | 513 | `result-track:ac3930b96a9e97aaf869148bf99451ad086c1f5cea4ca1119d48cafe1afa19f9` |
| 70 | `theorem` | [mapRange_id](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/maprange-id.md) | 517 | `result-track:63fdebec7c6a3815bdfc950728e23ea98415922b612bf33cab61d785f4140fdc` |
| 71 | `theorem` | [mapRange_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/maprange-zero.md) | 522 | `result-track:7a50f77729d753ecc0930c30199533c7cf60deb83e5b2c741927424e1e24cb61` |
| 72 | `theorem` | [mapRange_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/maprange-add.md) | 532 | `result-track:afd42537ff028834d390165d759db52c8a79d6a76fc7920e90dd429517a75f30` |
| 73 | `def` | [mapRangeHom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/maprangehom.md) | 539 | `declaration-track:ddb939f1ce5aa4ded37d5e868dae23bfc28414e5556818c9331afd40f511cea1` |
| 74 | `def` | [mapRangeₗ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/maprange.md) | 553 | `declaration-track:884e61491b111bcd9b058a4b6d08c3011a801000f7f607a9bed563d6022ff1e1` |
| 75 | `def` | [restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/restrict-source-edition-2.md) | 567 | `declaration-track:95b44456e64d622332709b116e1f1fc1b498f4caaf6407c691ba581009350e48` |
| 76 | `theorem` | [restrict_not_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/restrict-not-measurable.md) | 580 | `result-track:b7a32bf05ee28af0f721fbb68c584e1e73dfeaf8a83b1396d77aa43a71f15442` |
| 77 | `theorem` | [restrict_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/restrict-apply.md) | 583 | `result-track:f81eeb7f2f8b0bd23e3dd56712db5e5e4558061c0a089348706068e44e4033bc` |
| 78 | `theorem` | [restrict_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/restrict-eq-self.md) | 588 | `result-track:217c1e272b66ca2ad28451c053f7e9293ceda8c870a3e8ddfd5fc08f9d0ceab6` |
| 79 | `theorem` | [restrict_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/restrict-empty.md) | 593 | `result-track:fccd7de4b0f40f18b74731ee4e585237e68fc19718c5a3c0a7192ae9279f32b9` |
| 80 | `theorem` | [restrict_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/restrict-univ.md) | 598 | `result-track:137bb93c758d8e245df1f91ed73d08357dd1a5adc2184a2017c81f1ec251dfc2` |
| 81 | `theorem` | [restrict_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/restrict-zero.md) | 602 | `result-track:207394464b5817cd79bfe256c6d9bedb97599bdffa246aba673bac7807697dca` |
| 82 | `theorem` | [map_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/map-add.md) | 612 | `result-track:c92fbc285473f8b379c13213f4aca5e48780eecef513a71857463313c1192d20` |
| 83 | `def` | [mapGm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/mapgm.md) | 620 | `declaration-track:10221082642fd70722a1c5786eda896ba685f24ebc2cb5a1a5f6db40e18430d4` |
| 84 | `theorem` | [restrict_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/restrict-add.md) | 625 | `result-track:c9d295bb0918199ce12d878d913a9250fece0a3b71867b48ec79534a1cb31cc6` |
| 85 | `def` | [restrictGm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/restrictgm.md) | 634 | `declaration-track:74c4dfa9999535af7d1563b21fff0d68bbe4cf0e7fd306a23987711c9932801b` |
| 86 | `theorem` | [map_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/map-smul.md) | 650 | `result-track:da2ee900998cdb48ccadf231048abfbfe9bab6bc03b0c7284cafb3d303045053` |
| 87 | `theorem` | [restrict_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/restrict-smul.md) | 660 | `result-track:0cadac06333ff612037c87aab74a18162107a9a8d88debfd9a4b6baf3bb42513` |
| 88 | `def` | [mapₗ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/map-source-edition-3.md) | 680 | `declaration-track:cb43af37a1c2cc394365e53be07a26719046a0b4bb8b49c1b436332e642060c0` |
| 89 | `def` | [restrictₗ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/restrict.md) | 687 | `declaration-track:738642bdc61fcc680a55f54962366858a2caceb266098397cbc6efb563722b7b` |
| 90 | `instance` | [instPartialOrder](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/instpartialorder.md) | 701 | `declaration-track:dce543851a54f217e5d5f387d926ad98bb56f5b487115bba4c8d578464516ec3` |
| 91 | `theorem` | [le_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/le-iff.md) | 709 | `result-track:30ffce5595bbab93dff684faed249b74b517912479ffdc10440be80d9903608e` |
| 92 | `theorem` | [le_iff'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/le-iff-source-edition-2.md) | 711 | `result-track:7ee0c65f3e4958b4720e31a5a3d5b8eb1c505db76067e31373cac21783e3fcf8` |
| 93 | `theorem` | [restrict_le_restrict_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/restrict-le-restrict-iff.md) | 729 | `result-track:8f9c772d78d598a3b2111846fbfeb54896fb0fe8dd9e7b04f95eb20991a6d0b0` |
| 94 | `theorem` | [subset_le_of_restrict_le_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/subset-le-of-restrict-le-restrict.md) | 736 | `result-track:8519f49146bdf0d8470415af3b122883ce6274aa6dfcecf4a75dc9d411e449c2` |
| 95 | `theorem` | [restrict_le_restrict_of_subset_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/restrict-le-restrict-of-subset-le.md) | 742 | `result-track:b5c6f576f9995d8a0976ddf54b7b5ceb6d0e93e11b2e9060758ebb78f14a1bd9` |
| 96 | `theorem` | [restrict_le_restrict_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/restrict-le-restrict-subset.md) | 748 | `result-track:8e826fe0e33c3e1caf4bdacbb66ad01fc1b88fdedd5971fd1d9238d1745b626a` |
| 97 | `theorem` | [le_restrict_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/le-restrict-empty.md) | 753 | `result-track:59ff125060fea3db1ec2c78a17b9749f86dfd2924fca023f9dfdc372f455a97b` |
| 98 | `theorem` | [le_restrict_univ_iff_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/le-restrict-univ-iff-le.md) | 757 | `result-track:52cd57b2b956cf10d673fc0a2e2b4dc13edcf7909f78715c06bca1faed729d87` |
| 99 | `theorem` | [neg_le_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/neg-le-neg.md) | 776 | `result-track:8f88798ec392b73d1580b0403090ae66f01e02737305f35af945eee4e6f377e7` |
| 100 | `theorem` | [neg_le_neg_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/neg-le-neg-iff.md) | 784 | `result-track:1ec747886f834c5e9ddaba27cc9f511535e0571b69c2ca9d2343b0623aded7e0` |
| 101 | `theorem` | [restrict_le_restrict_iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/restrict-le-restrict-iunion.md) | 795 | `result-track:1bb52798440c51380cdb99f94699fcde97cc4a49205ef6023481e9c965dd0448` |
| 102 | `theorem` | [restrict_le_restrict_countable_iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/restrict-le-restrict-countable-iunion.md) | 817 | `result-track:9672ecbc8fb3bd09ad24a30946e3e1734d29816583917f7ecaf16d213f356a44` |
| 103 | `theorem` | [restrict_le_restrict_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/restrict-le-restrict-union.md) | 829 | `result-track:cf0726615547cabaf54842fc1535f31a58990e1536996f244d66f1a11a0b8c06` |
| 104 | `theorem` | [nonneg_of_zero_le_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/nonneg-of-zero-le-restrict.md) | 843 | `result-track:dbbc1361592196f777af092bec674cc52fc515a5d42447dff19b0005e88596db` |
| 105 | `theorem` | [nonpos_of_restrict_le_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/nonpos-of-restrict-le-zero.md) | 848 | `result-track:2ce1ef271f9c4cf6824caa3e056a9d222ee40025cfe23a125b1541333c4a86fd` |
| 106 | `theorem` | [zero_le_restrict_not_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/zero-le-restrict-not-measurable.md) | 853 | `result-track:b598c96ed09162201058f5135caff2a474affd6590f5174fadccf79c5cd970bd` |
| 107 | `theorem` | [restrict_le_zero_of_not_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/restrict-le-zero-of-not-measurable.md) | 856 | `result-track:39ea4f66e2f9381dc565542c875525c1767cca2ed0cb36e211ac9245ea9031c0` |
| 108 | `theorem` | [measurable_of_not_zero_le_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/measurable-of-not-zero-le-restrict.md) | 859 | `result-track:815d1561dca954ff3a730227f582052a782c1181a790268cece8efdb05080053` |
| 109 | `theorem` | [measurable_of_not_restrict_le_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/measurable-of-not-restrict-le-zero.md) | 862 | `result-track:140750c2ca87999878ce4355cfb31bad3c4cbe2529493bb56594e45ee38e8d08` |
| 110 | `theorem` | [zero_le_restrict_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/zero-le-restrict-subset.md) | 865 | `result-track:8fc26a10078b555657b632cddedf022275daac47a6c14dbf0e8d3fd92237b9e5` |
| 111 | `theorem` | [restrict_le_zero_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/restrict-le-zero-subset.md) | 869 | `result-track:c37a88d9eb0481529c42b833910599cac5a35e623e59106b40eb21376a9ed39f` |
| 112 | `theorem` | [exists_pos_measure_of_not_restrict_le_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/exists-pos-measure-of-not-restrict-le-zero.md) | 880 | `result-track:09655856eca7c5e63f538bdcd8c0c2eaf439bf5d8608270812e78c7633316dca` |
| 113 | `instance` | [instAddLeftMono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/instaddleftmono.md) | 894 | `declaration-track:b7ff91d79696cb9afbb76f133b9099333c04935aae1c24cb968971b0ffa73c14` |
| 114 | `def` | [AbsolutelyContinuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/absolutelycontinuous.md) | 907 | `declaration-track:54409faa206f99c8881fc0bbe28ede631189d60985f9f6d3f0a75793ffc8080e` |
| 115 | `theorem` | [mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/mk-source-edition-2.md) | 919 | `result-track:9be220351c120175416c4fbb625494fa03fff5c8d093416e11c806b4c32c62dc` |
| 116 | `theorem` | [eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/eq.md) | 925 | `result-track:11379f42803c7712583d3cf264bfa4d60fdbfac94d0452e488df8ff36422191f` |
| 117 | `theorem` | [refl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/refl.md) | 929 | `result-track:4ffd50ea4d7b3894e4fe239bbc5c826332482f4c753f1bfc3be53c8e72363b3f` |
| 118 | `theorem` | [trans](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/trans.md) | 933 | `result-track:dbfabb5ff4ce1fe7607f6af658d26d40c15dac8cf77a4bf885c8692dc5f77351` |
| 119 | `theorem` | [zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/zero.md) | 937 | `result-track:fbdcbe720f62b0efb656f60b1486ac11cbf1c10d0cc28a46d076e512c3167261` |
| 120 | `theorem` | [neg_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/neg-left.md) | 940 | `result-track:599e335b967ae2495af5d83254b5283336f20dc90c29fbc2166fe8b377022787` |
| 121 | `theorem` | [neg_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/neg-right-source-edition-2.md) | 945 | `result-track:da56494792b33b6c154bc8fc4186907e38d5be45e5327b3b2101775799e1e07f` |
| 122 | `theorem` | [add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/add-source-edition-2.md) | 951 | `result-track:a8ca9ebe6f594d46ba77369154be8be1de3e11d6d49a8310651b3a8e0173dbc1` |
| 123 | `theorem` | [sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/sub.md) | 956 | `result-track:214d4fcc34e595a5c4b625e7af50d7e61c2872fb20f475b3201443d4b0d30a45` |
| 124 | `theorem` | [smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/smul.md) | 962 | `result-track:a6bac64995b24f98745f6d06c76062fd63ebed180b25bd55972975e1e65d0729` |
| 125 | `theorem` | [map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/map.md) | 967 | `result-track:2fd453ae87a3af97fa92b04239e8f6763467eb2d9dd1a1478acb545ba53bc361` |
| 126 | `theorem` | [ennrealToMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/ennrealtomeasure-source-edition-2.md) | 975 | `result-track:941935764d05f99d5cd99d86b59896b57775a1cabc03d304f41d2b9931486c64` |
| 127 | `def` | [MutuallySingular](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/mutuallysingular.md) | 995 | `declaration-track:a3c8cd71a76c32a45aaa549e69af2534582e3e74d7a3e3f10397cafe3852b3a2` |
| 128 | `theorem` | [mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/mk.md) | 1005 | `result-track:095b4aec9875c8c6c5024d22ef73a933b5baf6028c6184850c486a511dc1c578` |
| 129 | `theorem` | [symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/symm.md) | 1013 | `result-track:bd0548956885ea06d9a2ba39da1d02de0536424eee2fe3e2b56f541ddd1c49c6` |
| 130 | `theorem` | [zero_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/zero-right.md) | 1017 | `result-track:35460a52d31ec5454cdc36b3d95618d9b109a2a9e733a55826acc81bb70d11cf` |
| 131 | `theorem` | [zero_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/zero-left.md) | 1021 | `result-track:3431612d902e79a2943154f17f67e7a2f3014d117fbafad6ceb772a2a1917a68` |
| 132 | `theorem` | [add_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/add-left.md) | 1024 | `result-track:2ccd3bfac007714ee1c2ae36969c19bd9ec202e5f662a2857d0f973de0447576` |
| 133 | `theorem` | [add_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/add-right.md) | 1043 | `result-track:44b277bde076db8f5144208dae07646b979ea98f976114c5c367fd29c1ac80e8` |
| 134 | `theorem` | [smul_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/smul-right.md) | 1046 | `result-track:0a127c5c17dd29d96f16780a883d0a884b0d43cbbff713eeec408531a14f1b95` |
| 135 | `theorem` | [smul_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/smul-left.md) | 1051 | `result-track:faabb589240b5fc6756bcdb1b95f8148fead770f1e38b530b48da52bc550f8bf` |
| 136 | `theorem` | [neg_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/neg-left-source-edition-2.md) | 1055 | `result-track:7bcd38d3979bfba92c9379320d9678a63aa69884eeaddbec19ddebdbf1cba1a0` |
| 137 | `theorem` | [neg_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/neg-right.md) | 1062 | `result-track:1eb45be60802fdfec75a2a3ebea1920b07ed10d0bd7f8ae205fc45ddccae5ba4` |
| 138 | `theorem` | [neg_left_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/neg-left-iff.md) | 1067 | `result-track:b79c4e9a905c5af6327cf1495e32538f625cee6e513c1943c18366905e195e94` |
| 139 | `theorem` | [neg_right_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/neg-right-iff.md) | 1072 | `result-track:1381c4233cc7499b087baf88ce669b4bd1696554f7b0f93aea024db97e4c1b45` |
| 140 | `def` | [trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/trim.md) | 1083 | `declaration-track:a049cb18ef85d4d43d5e60d62fb18266041c59fd2aa927d4394bf8c51ed5aa81` |
| 141 | `theorem` | [trim_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/trim-eq-self.md) | 1099 | `result-track:ea9bc0ac7517b342f738d80123de9d006fe9c428c513f3dba0fed84d902e783d` |
| 142 | `theorem` | [zero_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/zero-trim.md) | 1104 | `result-track:f99eb9a57af54339c4bfa18c4d5d2b411a727521947a5418df9df5da878df310` |
| 143 | `theorem` | [trim_measurableSet_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/trim-measurableset-eq.md) | 1108 | `result-track:89495522b208b661fc3962754a13d08cce024111d63d34f7bbdddc5f85d5ebd3` |
| 144 | `theorem` | [restrict_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/restrict-trim.md) | 1112 | `result-track:4d98d40bcc00ebdbfa1d13f189a20dca6066e64bffc5559868b2250f6a2edad8` |
| 145 | `def` | [toMeasureOfZeroLE'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/tomeasureofzerole-source-edition-2.md) | 1131 | `declaration-track:bb35bbc9dfd0c56afeacdc26a691c57b0bf1a5b128a5de7c055d151759548034` |
| 146 | `def` | [toMeasureOfZeroLE](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/tomeasureofzerole.md) | 1137 | `declaration-track:85b3b6452cccb6fcdbbf4c0866c9c263aa30d432f33d01cc61a885add7671967` |
| 147 | `theorem` | [toMeasureOfZeroLE_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/tomeasureofzerole-apply.md) | 1159 | `result-track:d2cd883f472b995d485e8a37ce0a20064c53c438ec347938a1d43e7c25bd4a27` |
| 148 | `theorem` | [toMeasureOfZeroLE_real_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/tomeasureofzerole-real-apply.md) | 1165 | `result-track:77e94e99ece27fc28d5518ae503bd9cac4e8fed70163b28a34b90fa48da0fdfc` |
| 149 | `def` | [toMeasureOfLEZero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/tomeasureoflezero.md) | 1172 | `declaration-track:c8517bce04c9ec6d8e47b3eb00e4c25bf551977a23a38e37589c170b9adc02e8` |
| 150 | `theorem` | [toMeasureOfLEZero_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/tomeasureoflezero-apply.md) | 1176 | `result-track:d14166ad128518c1483c53ce5f17b5ff08a899ee0f527e824722000aae2fd0f8` |
| 151 | `theorem` | [toMeasureOfLEZero_real_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/tomeasureoflezero-real-apply.md) | 1184 | `result-track:a1d3ba1d8837192225f77df78151d9ef60e1d07235b09eb8f64a64dbaf052b40` |
| 152 | `instance` | [toMeasureOfZeroLE_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/tomeasureofzerole-finite.md) | 1190 | `declaration-track:ab292c6c3658cb939a9dca3bf7993e1b53f76cc1888254a55c0dba3e573b9646` |
| 153 | `instance` | [toMeasureOfLEZero_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/tomeasureoflezero-finite.md) | 1197 | `declaration-track:ee7d8223c4e0fc60e973de4b7b9360126d49b18a222e997589c3d59aa085c758` |
| 154 | `theorem` | [toMeasureOfZeroLE_toSignedMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/tomeasureofzerole-tosignedmeasure.md) | 1203 | `result-track:dcbdeb9fb782be3ba1a36cb93b831b2190c2e5db5432056be5511f737d233719` |
| 155 | `theorem` | [toMeasureOfLEZero_toSignedMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/tomeasureoflezero-tosignedmeasure.md) | 1208 | `result-track:4504d9cd663b54f89ff1ecdd7c7ac470a8fa052c444d3e4170642c4c60fdc81e` |
| 156 | `theorem` | [zero_le_toSignedMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/zero-le-tosignedmeasure.md) | 1221 | `result-track:29d917d326447ba5dcc028d9b142509c340f737ec872606555b8a965f552c62e` |
| 157 | `theorem` | [toSignedMeasure_toMeasureOfZeroLE](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasicNamespaced.lean/declarations/tosignedmeasure-tomeasureofzerole.md) | 1227 | `result-track:3f32f68222e2cc1ae0b7e251c3fb63d3a3fe6733899b48e59811ce7a7c53597e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ff1270dc604d1a3155366d7b81dd0340397476d2c60210ffe20c9860dfe59b6f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Basic/Variant7c0e93e9ae70d81d9cc495fe1b92c80e51cc84f60949446e150c6e17d81dbdf1.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Basic/Variant7c0e93e9ae70d81d9cc495fe1b92c80e51cc84f60949446e150c6e17d81dbdf1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
