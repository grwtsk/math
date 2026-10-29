# Verification target: Normed Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a8455226a8b93d19a0e9139efb131b0a6670280",
  "lexical_observation_count": 105,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Normed/Variant74137324b09630f122a9f1297aafae712a43381f903321386ce1dab5f5f272b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/NormedNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/NormedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a8455226a8b93d19a0e9139efb131b0a6670280`.

Source path: `GRWTSK/Topology/MetricTopology/Normed/Variant74137324b09630f122a9f1297aafae712a43381f903321386ce1dab5f5f272b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Normed/Variant74137324b09630f122a9f1297aafae712a43381f903321386ce1dab5f5f272b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.MinimalAxioms` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Order.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Bounded.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instNorm](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instnorm.md) | 44 | `declaration-track:94eca72649d570c625eb8830739cb3f672db90cb58570f65156cdc8ce0b7bb29` |
| 2 | `theorem` | [norm_def](../../../../GeneralTopology/NormedNamespaced.lean/declarations/norm-def.md) | 46 | `result-track:d282e372cc00b8084f2e3e8b4a5ce6b39d4f4cf756f0e2778b27524c67e51098` |
| 3 | `theorem` | [norm_eq](../../../../GeneralTopology/NormedNamespaced.lean/declarations/norm-eq.md) | 50 | `result-track:82bd4e63bc4e24f577e0d64071e8474afb1eee252556bba7e5d3110386a60583` |
| 4 | `theorem` | [norm_eq_of_nonempty](../../../../GeneralTopology/NormedNamespaced.lean/declarations/norm-eq-of-nonempty.md) | 55 | `result-track:f3ae32a9049d87930e0ac7e931b943d330b2c66eeca46c8fe70eef2c14689904` |
| 5 | `theorem` | [norm_eq_zero_of_empty](../../../../GeneralTopology/NormedNamespaced.lean/declarations/norm-eq-zero-of-empty.md) | 64 | `result-track:742c286aff83dc969cd29842078d8802d29cb045a45bdeaa2693cbaf0c6e964e` |
| 6 | `theorem` | [norm_coe_le_norm](../../../../GeneralTopology/NormedNamespaced.lean/declarations/norm-coe-le-norm.md) | 67 | `result-track:8bfe4edfdf14a980f9eb91bb2b759f979818b98393a7a4aee030b1191c4cf786` |
| 7 | `lemma` | [neg_norm_le_apply](../../../../GeneralTopology/NormedNamespaced.lean/declarations/neg-norm-le-apply.md) | 72 | `result-track:89587151c48e819964fa6874cda62e47b106fefb3acce63cb51b3fd914c7f4a4` |
| 8 | `lemma` | [apply_le_norm](../../../../GeneralTopology/NormedNamespaced.lean/declarations/apply-le-norm.md) | 75 | `result-track:8cb13e0393264e3976bf20a640f036bcbb259dacaf219c40d021568936d7352b` |
| 9 | `theorem` | [dist_le_two_norm'](../../../../GeneralTopology/NormedNamespaced.lean/declarations/dist-le-two-norm-source-edition-2.md) | 78 | `result-track:8983769d3386f5e5bfd4dde3594f4cde36439b229b8caeaadfca0793c0cdb8ad` |
| 10 | `theorem` | [dist_le_two_norm](../../../../GeneralTopology/NormedNamespaced.lean/declarations/dist-le-two-norm.md) | 86 | `result-track:628a1820ebe845dc7b109b979e49fd2ca83b0e0bd1d753f299056950f13c1f93` |
| 11 | `theorem` | [norm_le](../../../../GeneralTopology/NormedNamespaced.lean/declarations/norm-le.md) | 92 | `result-track:e98094c0e57fba93e12f1d87d279a79e94ed198a4931c6ee7a03eac96af07aa7` |
| 12 | `theorem` | [norm_le_of_nonempty](../../../../GeneralTopology/NormedNamespaced.lean/declarations/norm-le-of-nonempty.md) | 95 | `result-track:6584894cc412618118b298fce4664d6fe8666b3d6580ba59e238ceac6e5421a8` |
| 13 | `theorem` | [norm_lt_iff_of_compact](../../../../GeneralTopology/NormedNamespaced.lean/declarations/norm-lt-iff-of-compact.md) | 99 | `result-track:7249a758dffb991709c75273d8e0b443411810588cb06429837f66e935c298fe` |
| 14 | `theorem` | [norm_lt_iff_of_nonempty_compact](../../../../GeneralTopology/NormedNamespaced.lean/declarations/norm-lt-iff-of-nonempty-compact.md) | 104 | `result-track:f1db3d7fd5b2a4494a2f02344ec15dd9b71de053782819d9767f8b1c094a6783` |
| 15 | `theorem` | [norm_const_le](../../../../GeneralTopology/NormedNamespaced.lean/declarations/norm-const-le.md) | 113 | `result-track:bcfb0d69e4b0be9eb38989a899ce5f8b59169b4923a4b657ab30966512b42988` |
| 16 | `theorem` | [norm_const_eq](../../../../GeneralTopology/NormedNamespaced.lean/declarations/norm-const-eq.md) | 117 | `result-track:21ddf49d5a03d37f8ea20e6b854d79f34b11b2233b902fa8b1b2d58efa5c23ed` |
| 17 | `def` | [ofNormedAddCommGroup](../../../../GeneralTopology/NormedNamespaced.lean/declarations/ofnormedaddcommgroup.md) | 122 | `declaration-track:4c269072cdb6a8e4f73c49f6c0d02d75e205b73a31163d83b562a3080c141fea` |
| 18 | `theorem` | [coe_ofNormedAddCommGroup](../../../../GeneralTopology/NormedNamespaced.lean/declarations/coe-ofnormedaddcommgroup.md) | 127 | `result-track:4253889e09bd5420bda222d41c176b37eb9ab272d7254eafea99435280e88639` |
| 19 | `theorem` | [norm_ofNormedAddCommGroup_le](../../../../GeneralTopology/NormedNamespaced.lean/declarations/norm-ofnormedaddcommgroup-le.md) | 131 | `result-track:2417ef81f49649090ae7c36819e3c6816b6593098de5419329f97c7a69a8f087` |
| 20 | `def` | [ofNormedAddCommGroupDiscrete](../../../../GeneralTopology/NormedNamespaced.lean/declarations/ofnormedaddcommgroupdiscrete.md) | 137 | `declaration-track:cc5904ecd0f549c4656796b8fc30748362b0fce1db5eaa55dcf649fb73dd5b9c` |
| 21 | `theorem` | [coe_ofNormedAddCommGroupDiscrete](../../../../GeneralTopology/NormedNamespaced.lean/declarations/coe-ofnormedaddcommgroupdiscrete.md) | 142 | `result-track:539dabcbf9a1e7c4af74195fe93eb3d88ea7ef1c89d99ec28b1e392ba7d8fde7` |
| 22 | `def` | [normComp](../../../../GeneralTopology/NormedNamespaced.lean/declarations/normcomp.md) | 148 | `declaration-track:88a084d553acd3e1aa2f04ecc1eda2392da25ae8bdf9dc7acf2879c1a504fb95` |
| 23 | `theorem` | [coe_normComp](../../../../GeneralTopology/NormedNamespaced.lean/declarations/coe-normcomp.md) | 152 | `result-track:726861f79b7bb847d11a09861270e4ed6420fb22ac455261deb201f2986ee68d` |
| 24 | `theorem` | [norm_normComp](../../../../GeneralTopology/NormedNamespaced.lean/declarations/norm-normcomp.md) | 155 | `result-track:a9b8b12f5dc4bd96a087f8e1d073238bfe7642f2e31356b8bf42a70231ad80dc` |
| 25 | `theorem` | [bddAbove_range_norm_comp](../../../../GeneralTopology/NormedNamespaced.lean/declarations/bddabove-range-norm-comp.md) | 158 | `result-track:79bed0ca193035d52f16d0255dae6950659caf4752752f3bc21691843aefb546` |
| 26 | `theorem` | [norm_eq_iSup_norm](../../../../GeneralTopology/NormedNamespaced.lean/declarations/norm-eq-isup-norm.md) | 161 | `result-track:b501cd0767c319d2e1ad34ab9a0d2aeefaa853aaa6234191605e6f99b565086c` |
| 27 | `instance` | [instNormOneClass](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instnormoneclass.md) | 165 | `declaration-track:aca0b092547f616b35d91735f1ca6f40748d01073b8920ade03e0d6dbb57eef9` |
| 28 | `instance` | [(anonymous)](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instance-source-edition-5.md) | 169 | `declaration-track:b5a64fd615c700a7814a4d71452c031a7fb244507de7f9cf4eb9e49ce16dd559` |
| 29 | `theorem` | [coe_neg](../../../../GeneralTopology/NormedNamespaced.lean/declarations/coe-neg.md) | 175 | `result-track:2ce57d237c14064c0da2ba0bf10fd83f9008d96dc17c5afce71ec0346f7deafa` |
| 30 | `theorem` | [neg_apply](../../../../GeneralTopology/NormedNamespaced.lean/declarations/neg-apply.md) | 177 | `result-track:1ee8588f2889966d7a911dcc47954f026993a200813b69e42c48c8778aaa3ce7` |
| 31 | `theorem` | [mkOfCompact_neg](../../../../GeneralTopology/NormedNamespaced.lean/declarations/mkofcompact-neg.md) | 180 | `result-track:37f100ec8542730f0e598afe0385c60e7257fcfda86766ebaad36d466fceaee1` |
| 32 | `theorem` | [mkOfCompact_sub](../../../../GeneralTopology/NormedNamespaced.lean/declarations/mkofcompact-sub.md) | 183 | `result-track:a819e0e7c4b45cae4540ac97cd927e6331e9f11ff33faae2e7e032bccac86409` |
| 33 | `theorem` | [coe_zsmulRec](../../../../GeneralTopology/NormedNamespaced.lean/declarations/coe-zsmulrec.md) | 187 | `result-track:a47c681dd49cf81eeea6a4adcfee3fc43c9a450a3f87905d61757f171408e97f` |
| 34 | `instance` | [instSMulInt](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instsmulint.md) | 191 | `declaration-track:77347c6f76e11de84c0edddc6011ff718850d0eb39f3fec82e565be826a48030` |
| 35 | `theorem` | [coe_zsmul](../../../../GeneralTopology/NormedNamespaced.lean/declarations/coe-zsmul.md) | 197 | `result-track:58e35b2979fbcf59a24e54b8f12890c5804d58ccb0c79095e087459046ae482e` |
| 36 | `theorem` | [zsmul_apply](../../../../GeneralTopology/NormedNamespaced.lean/declarations/zsmul-apply.md) | 200 | `result-track:57b91b73b906fda1af7456c01a2362a58a58d084d26a5b3e4220284f0a7a6a8b` |
| 37 | `instance` | [instAddCommGroup](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instaddcommgroup.md) | 202 | `declaration-track:9c896122950c563756eee1bcac42e85f0a47588b8d4e3ca414788facf8638dff` |
| 38 | `instance` | [instSeminormedAddCommGroup](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instseminormedaddcommgroup.md) | 206 | `declaration-track:414a26f0503fa319d16f3d794a9123bdf0445c39f6a61581aa7ece13cf2b420c` |
| 39 | `instance` | [instNormedAddCommGroup](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instnormedaddcommgroup.md) | 209 | `declaration-track:e5e219d682f3732f76057415323ac2befaa7c44c646b3af29bdfb1bca227b13e` |
| 40 | `theorem` | [nnnorm_def](../../../../GeneralTopology/NormedNamespaced.lean/declarations/nnnorm-def.md) | 214 | `result-track:03707b89e26f62007e0aab6ad5ea60ea19b01ff97679621fa2b6cb660894cec9` |
| 41 | `theorem` | [nnnorm_coe_le_nnnorm](../../../../GeneralTopology/NormedNamespaced.lean/declarations/nnnorm-coe-le-nnnorm.md) | 216 | `result-track:cc0dfee5b7118fbfb2e24ec5ef3f05cd2c0ad534ac24d9f90ab5a1246623f957` |
| 42 | `theorem` | [nndist_le_two_nnnorm](../../../../GeneralTopology/NormedNamespaced.lean/declarations/nndist-le-two-nnnorm.md) | 219 | `result-track:66bdcb0e2384b23be45e5ab8ed1a3f1b492e088e13eb4bef6e84e4e49ef74815` |
| 43 | `theorem` | [nnnorm_le](../../../../GeneralTopology/NormedNamespaced.lean/declarations/nnnorm-le.md) | 223 | `result-track:9d379831c22279aa285825b44abcb4f01b8a80e480e6895a888ff030ef00dc83` |
| 44 | `theorem` | [nnnorm_const_le](../../../../GeneralTopology/NormedNamespaced.lean/declarations/nnnorm-const-le.md) | 226 | `result-track:cb39f06fb02122fb18c5818752235f18ca685e64a93b3656f51190d770d3c7a9` |
| 45 | `theorem` | [nnnorm_const_eq](../../../../GeneralTopology/NormedNamespaced.lean/declarations/nnnorm-const-eq.md) | 230 | `result-track:e61cc9e00447f7e8b280e229776c43696cc00c0dfaf2e5d11feefc46c5a395e6` |
| 46 | `theorem` | [nnnorm_eq_iSup_nnnorm](../../../../GeneralTopology/NormedNamespaced.lean/declarations/nnnorm-eq-isup-nnnorm.md) | 233 | `result-track:3e2a8d1e8ec8a436dcffd3a396976a96cf14a1b7c929057946261d76cd3decf3` |
| 47 | `theorem` | [abs_diff_coe_le_dist](../../../../GeneralTopology/NormedNamespaced.lean/declarations/abs-diff-coe-le-dist.md) | 236 | `result-track:4ef4cef3cb435beff8ecc11565a2b6448093b085732bf7f1dcbb412786df452d` |
| 48 | `theorem` | [coe_le_coe_add_dist](../../../../GeneralTopology/NormedNamespaced.lean/declarations/coe-le-coe-add-dist.md) | 240 | `result-track:9c27740eb902bbbe45dce3b70a07855fd7dccb30fd7f97b4dd296d7d3d1094d7` |
| 49 | `theorem` | [norm_compContinuous_le](../../../../GeneralTopology/NormedNamespaced.lean/declarations/norm-compcontinuous-le.md) | 243 | `result-track:84e21ed522ae7ef25f6b883d52b5b6c717b768978e40251f0e18c50d3f833a44` |
| 50 | `instance` | [instNormedSpace](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instnormedspace.md) | 256 | `declaration-track:21565a37832fb2d2e859fc62abd7b098f2ab060c09b0dcf9fa9c2b0169ea4d64` |
| 51 | `def` | [Normed Namespaced](../../../../GeneralTopology/NormedNamespaced.lean/declarations/compleftcontinuousbounded.md) | 270 | `declaration-track:5c04a916ec0ae3de5d41ab72076d81252328c769967997ee29de774d9465e7d9` |
| 52 | `theorem` | [Normed Namespaced](../../../../GeneralTopology/NormedNamespaced.lean/declarations/compleftcontinuousbounded-apply.md) | 282 | `result-track:b97ef001e5ee5db8d41ea2cea6ff111d70eb7e2572ee108f1b2c5773ded2fe4d` |
| 53 | `instance` | [instNonUnitalRing](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instnonunitalring.md) | 297 | `declaration-track:fe34e5a4dc9e8d939472eecab68ec428d5ee24709b6b918ae412ba1d7d2f77c7` |
| 54 | `instance` | [instNonUnitalSeminormedRing](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instnonunitalseminormedring.md) | 301 | `declaration-track:3ce49b459b2a7ed118411aaf58050e0cdaf3c948d2888b4aac1ea04da6c1bd4e` |
| 55 | `instance` | [instNonUnitalSeminormedCommRing](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instnonunitalseminormedcommring.md) | 310 | `declaration-track:59e83f30ad0427af167efe61de76d9204b3a8032d3638ed2cff0c34e99d85300` |
| 56 | `instance` | [instNonUnitalNormedRing](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instnonunitalnormedring.md) | 314 | `declaration-track:603955635cc2574587bc8efb76d2af0991f2836aa4c4c82c542a3f4a957dde52` |
| 57 | `instance` | [instNonUnitalNormedCommRing](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instnonunitalnormedcommring.md) | 318 | `declaration-track:6b64b23f41503f1954f5c902791a733264ae123769c1eeeec0eaf7c6d4fb6de7` |
| 58 | `theorem` | [coe_npowRec](../../../../GeneralTopology/NormedNamespaced.lean/declarations/coe-npowrec.md) | 329 | `result-track:b070bade665a055ba20d65ecffac2901325e245f4bde3e7317554af219e7a532` |
| 59 | `instance` | [hasNatPow](../../../../GeneralTopology/NormedNamespaced.lean/declarations/hasnatpow.md) | 333 | `declaration-track:ffcc157dca457facb22c9762a7ff7efa3392b26a53241924193fb614bd71aa78` |
| 60 | `instance` | [(anonymous)](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instance.md) | 338 | `declaration-track:019eeb690464128eb0422c5fa2aa80c862f4c73d63570bd67846288ad82203a9` |
| 61 | `theorem` | [coe_natCast](../../../../GeneralTopology/NormedNamespaced.lean/declarations/coe-natcast.md) | 342 | `result-track:515486325ad890f29bbc408c6d6acf19c2a71bec9b05ca91717c04d39b780e74` |
| 62 | `theorem` | [coe_ofNat](../../../../GeneralTopology/NormedNamespaced.lean/declarations/coe-ofnat.md) | 345 | `result-track:2f431f67806bbdeda186d79670f87967d9e9ba58056c52dfd7a7013bdb23ee3d` |
| 63 | `instance` | [(anonymous)](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instance-source-edition-7.md) | 349 | `declaration-track:ee6f5dd8f61ca579196b2a3257e2a2929ac73666e7fda419717ec52ebe93b0ed` |
| 64 | `theorem` | [coe_intCast](../../../../GeneralTopology/NormedNamespaced.lean/declarations/coe-intcast.md) | 353 | `result-track:70016c1972a8e362707e048a64413761d5b87b66d7f8da7f80c8d0a335d0eec3` |
| 65 | `instance` | [instRing](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instring.md) | 355 | `declaration-track:5fc2dcd13611e1eb4e830dde45c8c85fdfd9e3428682f7ad8d47538877276d61` |
| 66 | `instance` | [instSeminormedRing](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instseminormedring.md) | 360 | `declaration-track:f7c98b264d2f163130ed508c261ca725bb9ee12be25bc46a70f32f39e40c49d1` |
| 67 | `def` | [Normed Namespaced](../../../../GeneralTopology/NormedNamespaced.lean/declarations/compleftcontinuousbounded-source-line-367-occurrence-2.md) | 367 | `declaration-track:f22f0709782b24d845f23e8fe5480a6674dc1e68a54d3f180472f6a22891870b` |
| 68 | `instance` | [instNormedRing](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instnormedring.md) | 375 | `declaration-track:a4972dd41c954c24dfe81d435d07e53797d2c757c7a4b291f5aec1ccf8682a30` |
| 69 | `instance` | [instCommRing](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instcommring.md) | 385 | `declaration-track:aec7f12d217b0ef9b498435cbcd1c3f6dc16cca8b794d6273f9ca003a398152b` |
| 70 | `instance` | [instSeminormedCommRing](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instseminormedcommring.md) | 388 | `declaration-track:2f153161aa92759ca460ec30761726f2e9e8273c1ada5fb383bff0211c5a9066` |
| 71 | `instance` | [instNormedCommRing](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instnormedcommring.md) | 392 | `declaration-track:a6c9de579db35c2aeed46bd555a425ad6ec2b9dc3bc39f5f7e7f8e3bf14b698e` |
| 72 | `instance` | [(anonymous)](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instance-source-edition-6.md) | 404 | `declaration-track:ce8ed31182b57a92907ecdff67f599531863bb700ef0990735c809e5363ee429` |
| 73 | `instance` | [(anonymous)](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instance-source-edition-2.md) | 407 | `declaration-track:370e013fc2a840fccf970d8395ee5a1bf14371b124c7d820d047b316ea53aab2` |
| 74 | `instance` | [(anonymous)](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instance-source-edition-4.md) | 410 | `declaration-track:9e82e33264dfbfc4cdecb6816b6fc0c429aacccd1589e7e7228bfda8c1eff029` |
| 75 | `def` | [C](../../../../GeneralTopology/NormedNamespaced.lean/declarations/c.md) | 423 | `declaration-track:876c692aef371280cdea1a02dacd63f2a768bc6ff78e721fb5e7f39955a58a9e` |
| 76 | `instance` | [instAlgebra](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instalgebra.md) | 430 | `declaration-track:2f0d4c4311490a30159d5a6494ba1332102e5b6e7286ef2aa2ff85c0f522baef` |
| 77 | `theorem` | [algebraMap_apply](../../../../GeneralTopology/NormedNamespaced.lean/declarations/algebramap-apply.md) | 436 | `result-track:898d45f12a77b331fccda97662ef6e2d9c36103a1036124cfc7bfad26376a03b` |
| 78 | `instance` | [instNormedAlgebra](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instnormedalgebra.md) | 439 | `declaration-track:ff174ee3ddf80861d990fe0c6b035c46fd27626161688111b71a6a05b54c39ed` |
| 79 | `def` | [AlgHom.compLeftContinuousBounded](../../../../GeneralTopology/NormedNamespaced.lean/declarations/alghom-compleftcontinuousbounded.md) | 448 | `declaration-track:a074fce905f58ec4bc8fc4858db70cb416505db24272bd87f442f58d68f42abb` |
| 80 | `def` | [toContinuousMapₐ](../../../../GeneralTopology/NormedNamespaced.lean/declarations/tocontinuousmap.md) | 456 | `declaration-track:b40c93f84d02d2c208caa93d0d0cb8ae02bc55d0ad8ff85cfb04f448242687ae` |
| 81 | `theorem` | [coe_toContinuousMapₐ](../../../../GeneralTopology/NormedNamespaced.lean/declarations/coe-tocontinuousmap.md) | 465 | `result-track:f9e0120e3c59a4ed60370b8676d183d1f5303cc55ff8ea538b834db45eecb1f9` |
| 82 | `instance` | [instSMul'](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instsmul.md) | 475 | `declaration-track:32d417b02ed9184f674f828646564bd99464a3957fc5501f359cf4b04186b764` |
| 83 | `instance` | [instModule'](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instmodule.md) | 483 | `declaration-track:c36bd586dad87051f02e1408f4df70f856e97c544a5b945225cc38250f01b793` |
| 84 | `instance` | [(anonymous)](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instance-source-edition-3.md) | 493 | `declaration-track:78381363b8af2ac1146b55d974031ccfb2f6866fb0eb8f2b9e376361982a31ad` |
| 85 | `instance` | [instPartialOrder](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instpartialorder.md) | 504 | `declaration-track:8c3ea39f5705b828c405dae8b1e7572d11f28fc650b3c0db9e97e97174d21fef` |
| 86 | `instance` | [instSup](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instsup.md) | 507 | `declaration-track:f85ef5e9fffb05abd38ed91815c026c0661a8122c5f7a63a3f51221ee5f8856c` |
| 87 | `instance` | [instInf](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instinf.md) | 518 | `declaration-track:0750135211ded56cfdb47c2024b10e32a462b1dc5c27c56e08dc40882f7993cd` |
| 88 | `lemma` | [coe_sup](../../../../GeneralTopology/NormedNamespaced.lean/declarations/coe-sup.md) | 529 | `result-track:d0cb8d6d6b9b0a7cefd497484a5d0a52c4cbefafdfcddc82a03ac4ab7b5505fd` |
| 89 | `lemma` | [coe_inf](../../../../GeneralTopology/NormedNamespaced.lean/declarations/coe-inf.md) | 531 | `result-track:a9f2e2e5d957441667153ceb119c8b4ee75f769821fb040e7da019c09944b3e4` |
| 90 | `instance` | [instSemilatticeSup](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instsemilatticesup.md) | 533 | `declaration-track:026568d1a41d338e7b5e35231f0d52c174e4ac5add525c9a7d2d5a10d0d83493` |
| 91 | `instance` | [instSemilatticeInf](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instsemilatticeinf.md) | 536 | `declaration-track:9f00739e98a807982ee8c32d017e35b1b3d8f76dc3f043d423cb5a1b18fbcc0c` |
| 92 | `instance` | [instLattice](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instlattice.md) | 539 | `declaration-track:3d13f6730090d2f98fc984cf74a5a2133fd51c80b9eaf680ce779b743ecea5c6` |
| 93 | `lemma` | [coe_abs](../../../../GeneralTopology/NormedNamespaced.lean/declarations/coe-abs.md) | 541 | `result-track:be0b207e3fc2962c21b06e46b6ec58ce436bfbbc9f7f8cbde8b3663598a7a337` |
| 94 | `lemma` | [coe_posPart](../../../../GeneralTopology/NormedNamespaced.lean/declarations/coe-pospart.md) | 542 | `result-track:cbe9939090ce96a3337d9ef9b4d193e905f13d64338b09834cf8d964be77248d` |
| 95 | `lemma` | [coe_negPart](../../../../GeneralTopology/NormedNamespaced.lean/declarations/coe-negpart.md) | 543 | `result-track:f830d001f53961584ddf949b5cd7a078261424c466d04dca899555489652ba24` |
| 96 | `instance` | [instHasSolidNorm](../../../../GeneralTopology/NormedNamespaced.lean/declarations/insthassolidnorm.md) | 545 | `declaration-track:8ead53bd2b6a068e5ec412948d8090a16f8a92d31ed318866e3a6e5c5eec36f5` |
| 97 | `instance` | [instIsOrderedAddMonoid](../../../../GeneralTopology/NormedNamespaced.lean/declarations/instisorderedaddmonoid.md) | 552 | `declaration-track:fc959b63f09ce1d333280350d1dc9c17b76846bfb4086623c83211c2c9ccd6bc` |
| 98 | `def` | [nnrealPart](../../../../GeneralTopology/NormedNamespaced.lean/declarations/nnrealpart.md) | 567 | `declaration-track:b282b7edc841f5ae7251a99c53b31c0319424adc01e939c42504f635c27ed1e0` |
| 99 | `theorem` | [nnrealPart_coeFn_eq](../../../../GeneralTopology/NormedNamespaced.lean/declarations/nnrealpart-coefn-eq.md) | 571 | `result-track:c19cdb4da87306309d71c597beac25e7b55bcd63c79d60d93789f85b5bfdb482` |
| 100 | `def` | [nnnorm](../../../../GeneralTopology/NormedNamespaced.lean/declarations/nnnorm.md) | 575 | `declaration-track:b671cb3fb584848c3ba089e14434b4120a853428f8f72cd0e64082a25fe32f08` |
| 101 | `theorem` | [nnnorm_coeFn_eq](../../../../GeneralTopology/NormedNamespaced.lean/declarations/nnnorm-coefn-eq.md) | 580 | `result-track:0b48e29b0e063eaee85d57ddefef71e5068ac92b4d57145a8620db22330d8287` |
| 102 | `theorem` | [self_eq_nnrealPart_sub_nnrealPart_neg](../../../../GeneralTopology/NormedNamespaced.lean/declarations/self-eq-nnrealpart-sub-nnrealpart-neg.md) | 584 | `result-track:21a28428aa3d9c751e5aa0b527a0b965e32d1ac1a53809d8dba283679c0dfd05` |
| 103 | `theorem` | [abs_self_eq_nnrealPart_add_nnrealPart_neg](../../../../GeneralTopology/NormedNamespaced.lean/declarations/abs-self-eq-nnrealpart-add-nnrealpart-neg.md) | 592 | `result-track:9a549cf43ca03467882afade11d44d65d657f1e9528408b602e541e7fdea979c` |
| 104 | `lemma` | [add_norm_nonneg](../../../../GeneralTopology/NormedNamespaced.lean/declarations/add-norm-nonneg.md) | 605 | `result-track:a0e6a5cf4408fda35eea3789a276ccf539ddc63b155a73d634fcc493f9117e75` |
| 105 | `lemma` | [norm_sub_nonneg](../../../../GeneralTopology/NormedNamespaced.lean/declarations/norm-sub-nonneg.md) | 612 | `result-track:e24523619ef59fa541fb5be546117fad51de4bc84813ade9ce45166b9e8c0598` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=311315fc54443d5e4a643f65fc993e250510474683c0a34496a0cd91641a9d83 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Normed/Variant74137324b09630f122a9f1297aafae712a43381f903321386ce1dab5f5f272b0.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Normed/Variant74137324b09630f122a9f1297aafae712a43381f903321386ce1dab5f5f272b0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
