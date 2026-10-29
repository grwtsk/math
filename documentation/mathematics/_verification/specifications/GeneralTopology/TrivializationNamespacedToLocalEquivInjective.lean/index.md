# Verification target: Trivialization Namespaced To Local Equiv Injective

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7abb9a7e47d2672a8c5875c34e97dbebde5f0ff0",
  "lexical_observation_count": 120,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Trivialization/Variantb6bdc7f6a11ac29cf2a6f522680d7c407e9d90de4e69150e694dda05220fb225.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/index.md) · [Full source](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7abb9a7e47d2672a8c5875c34e97dbebde5f0ff0`.

Source path: `GRWTSK/Topology/GeneralTopology/Trivialization/Variantb6bdc7f6a11ac29cf2a6f522680d7c407e9d90de4e69150e694dda05220fb225.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Trivialization/Variantb6bdc7f6a11ac29cf2a6f522680d7c407e9d90de4e69150e694dda05220fb225.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Bundle` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Field` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocalHomeomorph` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Pretrivialization](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/pretrivialization.md) | 75 | `declaration-track:70efcd2431654b13fa0c0346a3e8d1affba4c74952164a40c0c650b159ed96fd` |
| 2 | `def` | [toFun'](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/tofun.md) | 93 | `declaration-track:2a20c6aa7a0ef57e0bf5dcd5f5f6073d2327600a2878dd110a4bcc40b11456e7` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/instance.md) | 95 | `declaration-track:26cae4c6a657954c7d5dcd8cb9cf80d0dd8586eb7a9794c1fc843734967d6318` |
| 4 | `lemma` | [ext'](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/ext-source-edition-2.md) | 98 | `result-track:64a8467ebf6a3dbcdad6184b0ba0f167a3348b675e8fc514e40cff93bb4fcea2` |
| 5 | `lemma` | [ext](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/ext.md) | 104 | `result-track:5d34a8644bb8f7ae6bc0f06efea69c9602867edc6e5d5a09a19f7a27a3c7cd9f` |
| 6 | `lemma` | [toLocalEquiv_injective](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/tolocalequiv-injective.md) | 113 | `result-track:5bbc315dbd113d4e8c3154b9658ee585b375b73a9b54736962e9ead6856b4655` |
| 7 | `theorem` | [coe_coe](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/coe-coe.md) | 120 | `result-track:44645ada6efcc5e9ed7aa6366df045dc0e329b5bcd08eabed82723a1ce855dd8` |
| 8 | `theorem` | [coe_fst](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/coe-fst.md) | 125 | `result-track:4f5b3b163f80982e740b6f63122940155b98db6236e0a88ce211907e3f339a5e` |
| 9 | `theorem` | [mem_source](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/mem-source.md) | 129 | `result-track:84ea5ac301b99448eb14d2cdb0eb7dbaeb14d27b5e0a795566b8a9310226dc35` |
| 10 | `theorem` | [coe_fst'](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/coe-fst-source-edition-3.md) | 132 | `result-track:72041a8793f2cd1a4e521ae1e3449b64813e773e13e2346ea8172a4e9eb6435e` |
| 11 | `theorem` | [eqOn](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/eqon.md) | 136 | `result-track:b5dcb80f646e1ae5f603721f42c8a15fee703651c236703f93664466894f5157` |
| 12 | `theorem` | [mk_proj_snd](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/mk-proj-snd-source-edition-4.md) | 139 | `result-track:7262c64f1492e9f8611e62292ed226cbb6a09b7c8af6144a3d3df78c27ad527f` |
| 13 | `theorem` | [mk_proj_snd'](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/mk-proj-snd.md) | 143 | `result-track:19709a292a416cef546727bbc8a81c1719057b428be3853674702f79db0be99b` |
| 14 | `def` | [setSymm](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/setsymm.md) | 148 | `declaration-track:9ee7745e3dfe133e7614fd820d8125a2e786a59bfb8d782ca38dc89f738bb161` |
| 15 | `theorem` | [mem_target](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/mem-target.md) | 152 | `result-track:1a7016bf817f8f7cf04973f30e79b27b1a5f673653939652aa3db9f6e8d55fe2` |
| 16 | `theorem` | [proj_symm_apply](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/proj-symm-apply-source-edition-3.md) | 156 | `result-track:43264aa46562fea54dd67ecc4c42ab0aa836cc12d3711c30902b25966795f259` |
| 17 | `theorem` | [proj_symm_apply'](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/proj-symm-apply-source-edition-2.md) | 161 | `result-track:40d55d9e34e9b40d115f0c11f485893b688b8edb8f5b83b4f31ec3eb2acafee9` |
| 18 | `theorem` | [proj_surjOn_baseSet](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/proj-surjon-baseset-source-edition-2.md) | 166 | `result-track:fc0e7f9d9fbe884047f953a5b53533484a67b14ff57ae885c357ef55f7f02130` |
| 19 | `theorem` | [apply_symm_apply](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/apply-symm-apply-source-edition-4.md) | 172 | `result-track:f2db496785d29f656d5538038024e591b032511299e1578f74d1d9bf9d385e8f` |
| 20 | `theorem` | [apply_symm_apply'](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/apply-symm-apply-source-edition-3.md) | 176 | `result-track:e6502b1f358e6b08736a6607d9208bcc38d8f2d17cfeaaf4656f3b7e95c5dac5` |
| 21 | `theorem` | [symm_apply_apply](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/symm-apply-apply-source-edition-2.md) | 181 | `result-track:67ef143c48434b0a6c1ed32de14b68b60c08709bc2bcbe3bea98e573a7e1c3a1` |
| 22 | `theorem` | [symm_apply_mk_proj](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/symm-apply-mk-proj-source-edition-2.md) | 186 | `result-track:c8ee92761db3564b2678845d24247576d78bbb8d4c1f4ba1ede4f70604339891` |
| 23 | `theorem` | [preimage_symm_proj_baseSet](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/preimage-symm-proj-baseset.md) | 192 | `result-track:111ed1a0e785aec534dcd640062d133f171819e1c7aea1ef648d4daf39557bce` |
| 24 | `theorem` | [preimage_symm_proj_inter](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/preimage-symm-proj-inter.md) | 200 | `result-track:c90f660543bc129cf8f8ff6522954c8186b059ce5b7ac8dfae4e2316cd828ad3` |
| 25 | `theorem` | [target_inter_preimage_symm_source_eq](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/target-inter-preimage-symm-source-eq.md) | 209 | `result-track:16526e0e6291b660062cea47695a381b998e8caa79ec39418c3d6c2d60002756` |
| 26 | `theorem` | [trans_source](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/trans-source.md) | 214 | `result-track:ebaa2ea8c54db3b380165b3fc02d8d6167cda198e0ae643b480aa84b57fcfbcb` |
| 27 | `theorem` | [symm_trans_symm](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/symm-trans-symm.md) | 219 | `result-track:cfbc6c4ce7f569e2ed4e96cf3953f83bae574fe8b1e04eaca07f38a955b2065f` |
| 28 | `theorem` | [symm_trans_source_eq](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/symm-trans-source-eq-source-edition-2.md) | 224 | `result-track:ca2f9aabfd4c63ecc63193ffa81a3ed74db488d8ce7556bad8858d12b811abd3` |
| 29 | `theorem` | [symm_trans_target_eq](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/symm-trans-target-eq.md) | 230 | `result-track:16b20bb99eb55683b04003bd0e6d7433ede46376aa1ff3a678a9cd40ab6d7151` |
| 30 | `theorem` | [coe_mem_source](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/coe-mem-source.md) | 238 | `result-track:1be0c6f9c696112463c9d649593148165ccd13d9854919b5cec57fb52141563a` |
| 31 | `theorem` | [coe_coe_fst](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/coe-coe-fst-source-edition-2.md) | 243 | `result-track:93424579021f68bfcedc890dad14d8dc8d5aa16a543ad6a8937d1c42ed61d15d` |
| 32 | `theorem` | [mk_mem_target](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/mk-mem-target-source-edition-2.md) | 247 | `result-track:693c91d209872aa383d966f333ec0acd83f8102efa3cd8e83bfc34e174bbc682` |
| 33 | `theorem` | [symm_coe_proj](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/symm-coe-proj.md) | 251 | `result-track:517b52e2312ad09219ceb0d72ba67cbe04bf9d358be94b631602d4adb2dc22d7` |
| 34 | `def` | [symm](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/symm.md) | 262 | `declaration-track:4814f57daafeb5850431edfc6598b6491647e5f0b6c6cd43fab1ed403621781b` |
| 35 | `theorem` | [symm_apply](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/symm-apply-source-edition-2.md) | 268 | `result-track:d7b33dd565d3755bffb35562c26aaa5e6b6e01bea1f25fbff341fc5b5eab7c06` |
| 36 | `theorem` | [symm_apply_of_not_mem](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/symm-apply-of-not-mem-source-edition-2.md) | 273 | `result-track:b1bd624a445f3bd5a6fd55010977a77e7c55b2839d3b730444dbb9be7f2e4533` |
| 37 | `theorem` | [coe_symm_of_not_mem](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/coe-symm-of-not-mem.md) | 278 | `result-track:f636270ab252e8e8cc3b032cf12a8b019965dd5a01290ac42e44fe9a72e1cfc0` |
| 38 | `theorem` | [mk_symm](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/mk-symm-source-edition-2.md) | 283 | `result-track:5641edea2588c57035cfa725dc047991b3d40b49c7d576e09763ed96877b5aba` |
| 39 | `theorem` | [symm_proj_apply](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/symm-proj-apply-source-edition-2.md) | 288 | `result-track:995b9a9bc126b365b6e12938c14eb33ee984b1a916867a4ab40e03ad29b16c21` |
| 40 | `theorem` | [symm_apply_apply_mk](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/symm-apply-apply-mk.md) | 293 | `result-track:d26518de94de287566736e2a1f00250ad6ceb3758ebeff739050c85121ee0050` |
| 41 | `theorem` | [apply_mk_symm](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/apply-mk-symm.md) | 298 | `result-track:4dc45113e844a6cc66eb3c7c0b793f3f7bbddd9460d55a7c77f501bea6c460f1` |
| 42 | `structure` | [Trivialization](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/trivialization.md) | 314 | `declaration-track:9cc5712d03000d4791f876ceac327331ba62bc8b5c4c36bff01ba78d45ed9258` |
| 43 | `lemma` | [ext'](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/ext-source-edition-3.md) | 328 | `result-track:91932bfca95bfe33f5908b822ad93caaefc2461d47969648371253da2f9e9c67` |
| 44 | `def` | [toFun'](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/tofun-source-edition-2.md) | 337 | `declaration-track:fbb75099e68470ada8e360f5fa005be64e553996977c036d8399f7e2e2f194af` |
| 45 | `def` | [toPretrivialization](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/topretrivialization.md) | 340 | `declaration-track:c7768ea34206e743e7d3ee32bc787989e77c88fdc7a2f63e436c23f88fabc1cc` |
| 46 | `instance` | [(anonymous)](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/instance-source-edition-3.md) | 344 | `declaration-track:86cd8096cee9eb65160ddd05b28b99b5c332937c92cb0d2b48d69af6131113bd` |
| 47 | `instance` | [(anonymous)](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/instance-source-edition-2.md) | 346 | `declaration-track:46eae1c96b3b6de60cb8e2dc6efd608c590f1a82d1099b130e3fe4b372b6e0db` |
| 48 | `theorem` | [toPretrivialization_injective](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/topretrivialization-injective.md) | 349 | `result-track:2d197208e7710014fa8085f9525911c28376a07fc5be379cd64343e24f4fe652` |
| 49 | `theorem` | [coe_coe](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/coe-coe-source-edition-2.md) | 357 | `result-track:b2596c1365faff1df139d6ae657d8ef061f0084f0266a91dc376fdd691361aad` |
| 50 | `theorem` | [coe_fst](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/coe-fst-source-edition-2.md) | 362 | `result-track:6ae02ce0e6f8744b074288e7005d8c58825e078cba32f74ce5e5568e55c7bbab` |
| 51 | `theorem` | [eqOn](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/eqon-source-edition-2.md) | 366 | `result-track:c61825b1cbd5001a3060539f64feddf72d985d1a801a23a8c2ae50e124ab2088` |
| 52 | `theorem` | [mem_source](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/mem-source-source-edition-2.md) | 369 | `result-track:ed6391c5eff8173c345334c30320dfd57dd1e820e3171b5fb528f0dae7bf28d3` |
| 53 | `theorem` | [coe_fst'](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/coe-fst-source-edition-4.md) | 372 | `result-track:d5b7d461a48dc905e1f36b4f4867881571fb4eb2fc59e803d7b446f7e44fac00` |
| 54 | `theorem` | [mk_proj_snd](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/mk-proj-snd-source-edition-2.md) | 376 | `result-track:27bcbceb53d0566bba2fbb2bbae9a3d03e2a2c13ca84ac04f8655749d06ce2a3` |
| 55 | `theorem` | [mk_proj_snd'](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/mk-proj-snd-source-edition-3.md) | 380 | `result-track:590f4b13617896effa7a17947dae2270e79f697f26aa3cbdf3e7ac9e48708687` |
| 56 | `theorem` | [source_inter_preimage_target_inter](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/source-inter-preimage-target-inter.md) | 384 | `result-track:85afbcd973c58552c04d2008ee354efae2d0c952fe678917432576f6c6d66512` |
| 57 | `theorem` | [coe_mk](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/coe-mk.md) | 390 | `result-track:b99428a398b626ba4b905c2097d6b1ea6735c5b39bf6ce8e55a5a989c615800c` |
| 58 | `theorem` | [mem_target](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/mem-target-source-edition-2.md) | 395 | `result-track:e43400fafbed8fe93937cdd28f94425af640d0a3847a441a7e8e9adafcb08e4c` |
| 59 | `theorem` | [map_target](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/map-target.md) | 399 | `result-track:3768d8b201204ba6be4072710f81229e2f93bc775a04e0791728d3565c873ead` |
| 60 | `theorem` | [proj_symm_apply](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/proj-symm-apply-source-edition-4.md) | 403 | `result-track:fd2f12cd1ed80e81e8312009cba25f715f5872596dcf57e4e842df498adf7057` |
| 61 | `theorem` | [proj_symm_apply'](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/proj-symm-apply.md) | 407 | `result-track:102532e6d3538082ee82a53369cd4586cc4062bbca2afe7144af6df9830a677a` |
| 62 | `theorem` | [proj_surjOn_baseSet](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/proj-surjon-baseset.md) | 412 | `result-track:ca8716be1c9eb8e6397bddca27cfaf4efe38ddd590487176d3d7b3ebf9b4f987` |
| 63 | `theorem` | [apply_symm_apply](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/apply-symm-apply.md) | 416 | `result-track:25276a0e09985e3aeb3d70117c6f1be57d1a75258e9ea44fce0d7b7e65df97ff` |
| 64 | `theorem` | [apply_symm_apply'](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/apply-symm-apply-source-edition-2.md) | 420 | `result-track:7e60b5208e990e0488ebc88f699c512db0be433bf2a2bbf9025c191f61b5bc7c` |
| 65 | `theorem` | [symm_apply_mk_proj](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/symm-apply-mk-proj.md) | 426 | `result-track:85b1f518b670e2731467d90632ab20f2fa3da0c8bc7cb8dbae62f43032174332` |
| 66 | `theorem` | [symm_trans_source_eq](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/symm-trans-source-eq.md) | 430 | `result-track:1edd8d56fa5e47987925a9a500c3e44986f4fac4953613c2e54209921baaefe8` |
| 67 | `theorem` | [symm_trans_target_eq](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/symm-trans-target-eq-source-edition-2.md) | 435 | `result-track:2b15cb0c52fb6d7003dbf33e6599495ec540207dba77dc18ba9baaf3e1228b52` |
| 68 | `theorem` | [coe_fst_eventuallyEq_proj](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/coe-fst-eventuallyeq-proj.md) | 440 | `result-track:31e99180d9de9b03ca4d51b835d6e8eeff3ea7e3e1a8dcec9f186f419a0304d4` |
| 69 | `theorem` | [coe_fst_eventuallyEq_proj'](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/coe-fst-eventuallyeq-proj-source-edition-2.md) | 444 | `result-track:cb600dd92a9796b684ae2c7ec19deeca2672a911e813dd0ca211e7ccbd8a4eea` |
| 70 | `theorem` | [map_proj_nhds](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/map-proj-nhds.md) | 448 | `result-track:9b67cfbb114f706b88afc256f966ec951b62662647b76d2b767d6db1eda0ae9f` |
| 71 | `theorem` | [preimage_subset_source](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/preimage-subset-source.md) | 453 | `result-track:d26cda6213889bf52641b1a1aa60c224a804c19d1b749a25fa52ee0eadb1e11e` |
| 72 | `theorem` | [image_preimage_eq_prod_univ](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/image-preimage-eq-prod-univ.md) | 457 | `result-track:3577c767c7ba04b93d9fa90b563c983d83bdd8b5a68fae1b6afbcf8fa586f800` |
| 73 | `theorem` | [tendsto_nhds_iff](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/tendsto-nhds-iff.md) | 467 | `result-track:b885d9db4912ce5297c7e549b90027e7a185e5fe735039f72103355d8b179dad` |
| 74 | `theorem` | [nhds_eq_inf_comap](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/nhds-eq-inf-comap.md) | 480 | `result-track:b3f94231a2a9e161442eb4f93671fc32454e22e24dd31d668fb130777961c598` |
| 75 | `def` | [preimageHomeomorph](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/preimagehomeomorph.md) | 487 | `declaration-track:3f72475b0abc318ff061f21feb024fcc56e22476459cabb36e1cfcb0f3455bf6` |
| 76 | `theorem` | [preimageHomeomorph_apply](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/preimagehomeomorph-apply.md) | 494 | `result-track:32d212d8df24d14ed5341b8165d969d6999bd8f75b70c36f66d3c8131a95fa8c` |
| 77 | `theorem` | [preimageHomeomorph_symm_apply](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/preimagehomeomorph-symm-apply.md) | 500 | `result-track:002dc30f26b758ec5283de18fc1f381c56e0229831d8503a85a331f85dfe1889` |
| 78 | `def` | [sourceHomeomorphBaseSetProd](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/sourcehomeomorphbasesetprod.md) | 506 | `declaration-track:69476a3a82934f17fa08a5f093e570c3337b2f158c9e9719cb63c0d09cb1fbdf` |
| 79 | `theorem` | [sourceHomeomorphBaseSetProd_apply](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/sourcehomeomorphbasesetprod-apply.md) | 511 | `result-track:c1e2f973c87ccd4f7da508e6a5608768a4e9357b3320283586603da3d30d726d` |
| 80 | `theorem` | [sourceHomeomorphBaseSetProd_symm_apply](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/sourcehomeomorphbasesetprod-symm-apply.md) | 517 | `result-track:306b443f3e3541bb752910a9ccefd202f2dd9562fb5fc96e3e906d573d780c22` |
| 81 | `def` | [preimageSingletonHomeomorph](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/preimagesingletonhomeomorph.md) | 524 | `declaration-track:e87a1d107d92ea29c0759e82b84c0e9fb8fcd33aec3dd295519f4744eec3773e` |
| 82 | `theorem` | [preimageSingletonHomeomorph_apply](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/preimagesingletonhomeomorph-apply.md) | 531 | `result-track:306eed1b54bef92543779b3bd8358f50eb24c0ad59cc27975b2b4a77498e41b2` |
| 83 | `theorem` | [preimageSingletonHomeomorph_symm_apply](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/preimagesingletonhomeomorph-symm-apply.md) | 537 | `result-track:93514118e88a31d40e503691b8599660b3ff7c24dfd36bcdc51ece22da258700` |
| 84 | `theorem` | [continuousAt_proj](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/continuousat-proj.md) | 544 | `result-track:741ccbaa9988e44c4b25ac75a265ebbd4c2538a696dd6b7622aa45b9756f71c1` |
| 85 | `def` | [compHomeomorph](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/comphomeomorph.md) | 549 | `declaration-track:18984aee54a97f1a88d30df646330867392f507717a650f2a383f88d262d6b33` |
| 86 | `theorem` | [continuousAt_of_comp_right](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/continuousat-of-comp-right.md) | 563 | `result-track:2ff56da7ae13715223da7547a69e3bb997fad84bce659d46091a22728908a4ce` |
| 87 | `theorem` | [continuousAt_of_comp_left](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/continuousat-of-comp-left.md) | 575 | `result-track:1c7e3db60a4c7470afe67755f460977f37e03d16240b506608165af428c328fd` |
| 88 | `theorem` | [continuousOn](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/continuouson.md) | 586 | `result-track:91311e4f04739a27e279286a8d7ebe6e00c8ee8406be1db29f276e78d6c0112d` |
| 89 | `theorem` | [coe_mem_source](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/coe-mem-source-source-edition-2.md) | 590 | `result-track:4267c04a326daaa7c8fae743b02333cb1b722e4c13e40f5ca494886da09a35c4` |
| 90 | `theorem` | [open_target'](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/open-target.md) | 595 | `result-track:78e543cb00a7d4a10510c4da68a4d437cd8f1454885ada5a6a01aa61c9588aed` |
| 91 | `theorem` | [coe_coe_fst](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/coe-coe-fst.md) | 599 | `result-track:33021c7c9bc77f7e896a7749fc99809d6ac977d37c21b423647bcb9c2d691fa8` |
| 92 | `theorem` | [mk_mem_target](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/mk-mem-target.md) | 603 | `result-track:13ec507ef0b99b28c3f246691a6b276af1acde812d0eebef052fceff054b2bb8` |
| 93 | `theorem` | [symm_apply_apply](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/symm-apply-apply.md) | 607 | `result-track:12e8a914d76137dcb70eb21714e2bd4f11718ca4adcd17139c880b53048f9083` |
| 94 | `theorem` | [symm_coe_proj](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/symm-coe-proj-source-edition-2.md) | 613 | `result-track:74ef543fbc6e2922c05e0de69bfd6f2f7a3595e79dbfc2835b23b7b3390c97f1` |
| 95 | `def` | [symm](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/symm-source-edition-2.md) | 624 | `declaration-track:740d3a07a8c2c297a83c8e285a938c85c8b2f0d89d2840690528eedc8aa41227` |
| 96 | `theorem` | [symm_apply](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/symm-apply.md) | 628 | `result-track:8a7c4ad36d663aed28290672e0ed7860b0cfd82709f5ee4de4495d80d5c01337` |
| 97 | `theorem` | [symm_apply_of_not_mem](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/symm-apply-of-not-mem.md) | 633 | `result-track:4179b4074749a6f22eae058186fed62189cb6296649c60c35705b25865e1b8ff` |
| 98 | `theorem` | [mk_symm](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/mk-symm.md) | 638 | `result-track:3873e758f3dfeefba8eaab7122b902e41795aa4d3d3edb4f085a51b0f0a8ed8f` |
| 99 | `theorem` | [symm_proj_apply](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/symm-proj-apply.md) | 643 | `result-track:974b3b6deae4f973f4c31ade0f60c7f7bae56b2eea06f170d27f3bdfb180e430` |
| 100 | `theorem` | [symm_apply_apply_mk](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/symm-apply-apply-mk-source-edition-2.md) | 648 | `result-track:f5fc786a6eb4463e95cab7a7e9f63afa2c4b5e3ff5690419ff66106889ed4403` |
| 101 | `theorem` | [apply_mk_symm](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/apply-mk-symm-source-edition-2.md) | 653 | `result-track:66be5ccdc5bd7d3ec36bc6917d4a041845c629cd151c41ece06952778525e4d9` |
| 102 | `theorem` | [continuousOn_symm](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/continuouson-symm.md) | 658 | `result-track:707e136453ee6c42d0aee69301a4c33d18c273a4e8a53dab7d7b5a73f49d5f3d` |
| 103 | `def` | [transFiberHomeomorph](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/transfiberhomeomorph.md) | 674 | `declaration-track:d465b2dfb8760d5e4d5e959d1e4906c00300fe244de463c372845eaa9b231b32` |
| 104 | `theorem` | [transFiberHomeomorph_apply](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/transfiberhomeomorph-apply.md) | 685 | `result-track:484447a1e5173a8e440a26359ebf2eb7455fb8655a16f02e71fdad49690dcb52` |
| 105 | `def` | [coordChange](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/coordchange.md) | 692 | `declaration-track:3af0cebbced21c0fbdd5b1ab1917abc360eb5745a28a614abbdab4b89a6174bd` |
| 106 | `theorem` | [mk_coordChange](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/mk-coordchange.md) | 696 | `result-track:300c1365dab1fe76b167c6a95b591c37e532cdceed71742bd1fde1d02343007c` |
| 107 | `theorem` | [coordChange_apply_snd](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/coordchange-apply-snd.md) | 705 | `result-track:9ddd3896fd9d2a87ba16ae6bd90c3c7940bea42c0bb8287979df8953ac5eb32b` |
| 108 | `theorem` | [coordChange_same_apply](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/coordchange-same-apply.md) | 710 | `result-track:29d05962d36ebb16d3788910a13580386e3be2df73c30f085951c74824bf53f6` |
| 109 | `theorem` | [coordChange_same](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/coordchange-same.md) | 714 | `result-track:450e6aece3f8f76d902b27cd7d338e05e20349502ec1fae83ac1dd76014a6fdc` |
| 110 | `theorem` | [coordChange_coordChange](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/coordchange-coordchange.md) | 719 | `result-track:5458d5604f86b41059a25a10432e2616a6e9097ded0d47de49eedd73f012cc6f` |
| 111 | `theorem` | [continuous_coordChange](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/continuous-coordchange.md) | 726 | `result-track:f78528b43839aa80899536caa5215ed6961b09a48bfbb378f1a338d29de68ce7` |
| 112 | `def` | [coordChangeHomeomorph](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/coordchangehomeomorph.md) | 738 | `declaration-track:43bd2c34502e27815697a76ccdb405758e22aa65f30dc233d6113c636d48a1ae` |
| 113 | `theorem` | [coordChangeHomeomorph_coe](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/coordchangehomeomorph-coe.md) | 749 | `result-track:51b84382df482b17cd1534d53a423c1b78044941fc2f240cb027e236c52a62a8` |
| 114 | `theorem` | [isImage_preimage_prod](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/isimage-preimage-prod.md) | 756 | `result-track:d0703b284fb6dcc4681892ef950f173a7c169ac299a385155fd5c54593a084fb` |
| 115 | `def` | [restrOpen](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/restropen.md) | 761 | `declaration-track:4046102a709b4b8acc9d665cd89cb2c936c5089cd27a51cbea29a7f2e9b917f3` |
| 116 | `theorem` | [frontier_preimage](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/frontier-preimage.md) | 774 | `result-track:18c0edfecb19ace3b5c39b8fcc4dd32b2059dd91214793dfecf1adc46a347fca` |
| 117 | `def` | [piecewise](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/piecewise.md) | 785 | `declaration-track:56eb5c44e9286fed4bb7b543dc1a002f5ecf9e723dde1f48736ccee2e5e2de53` |
| 118 | `def` | [piecewiseLeOfEq](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/piecewiseleofeq.md) | 808 | `declaration-track:e21f25e8d36095a79dce2aac9b1cc96395583ac44256a0861e738abe1f0da849` |
| 119 | `def` | [piecewiseLe](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/piecewisele.md) | 824 | `declaration-track:cb97da8020ac7da23c35b064664563924e10a4b65177c202878dbe7b8fa141c4` |
| 120 | `def` | [disjointUnion](../../../../GeneralTopology/TrivializationNamespacedToLocalEquivInjective.lean/declarations/disjointunion.md) | 836 | `declaration-track:4d018f0f328927f124ccdca60664f44b49bc04239ea323aa097399d636dc7d6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bb785c9c7cea864d7edea154dcaafddf13bcd1f1d7699b8bf823d349eb772f14 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Trivialization/Variantb6bdc7f6a11ac29cf2a6f522680d7c407e9d90de4e69150e694dda05220fb225.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Trivialization/Variantb6bdc7f6a11ac29cf2a6f522680d7c407e9d90de4e69150e694dda05220fb225.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
