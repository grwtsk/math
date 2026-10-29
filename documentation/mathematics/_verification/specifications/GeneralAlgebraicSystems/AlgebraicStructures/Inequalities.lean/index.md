# Verification target: Inequalities

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8bab9c9f6cae923cc3ccba2c415f543892e81a1a",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Inequalities/Variant4553538d1999847b4e8074b67cd26d73be3126c9b2c43961da0203b21f1be06e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8bab9c9f6cae923cc3ccba2c415f543892e81a1a`.

Source path: `GRWTSK/Algebra/Inequalities/Variant4553538d1999847b4e8074b67cd26d73be3126c9b2c43961da0203b21f1be06e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Inequalities/Variant4553538d1999847b4e8074b67cd26d73be3126c9b2c43961da0203b21f1be06e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Ring.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SuccessIfFailWithMsg` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.OfScientific` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `axiom` | [test_sorry](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/test-sorry.md) | 16 | `declaration-track:4d06a3d21e6cc7e41a902514b91913edbd7d5aa5481a8b26f6f1e2faee051d26` |
| 2 | `axiom` | [Real](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/real.md) | 22 | `declaration-track:192a31a4ba01c0fff0dc1dcb3e895bd4ea2edd6541fed5fc30314f4ea6d893f5` |
| 3 | `axiom` | [Real.field](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/real-field.md) | 24 | `declaration-track:d952af8dcedcd7884700461187b39bd6c26e58990b5ef52b6b8b7d62d54d75a5` |
| 4 | `axiom` | [Real.linearOrder](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/real-linearorder.md) | 25 | `declaration-track:20ee3c85653f4461648c985b2752ceeff623015bf436169217e94363fa2a25a0` |
| 5 | `axiom` | [Real.isStrictOrderedRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/real-isstrictorderedring.md) | 26 | `declaration-track:882f9ef9fbe853926e9809eb12da810a49198c6d0b8c1ee71c71310af6ce082e` |
| 6 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-13.md) | 30 | `declaration-track:3e8c8a55821b2badcbd53e87c28546da7dc27efa4ec0a6ca0f799703ae5aed45` |
| 7 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-17.md) | 32 | `declaration-track:55d70354516ff42b60dc26b8ab8ba701481f4ebafff29c15b7e0b8095e4322bb` |
| 8 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-19.md) | 33 | `declaration-track:6788a0146543ecf457e801373dc22591565175dfe5ac747b5b415ee7bfcd78f7` |
| 9 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-41.md) | 35 | `declaration-track:c547ecb4034dd51185ee3870cc437b255f162b3c7a6425de7c4a42bdfba8be76` |
| 10 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-56.md) | 37 | `declaration-track:f72bbcc100b32e6ec51a38212f28e5d5ba98db8de4bb4aac90b46e9de0a1046a` |
| 11 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-2.md) | 40 | `declaration-track:05d7c752fff8732e4ea4cbf3860c78509b24655ad30348e0c8df5a43cf0b04b5` |
| 12 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-54.md) | 42 | `declaration-track:f1f7fb2e21d37010423c7f9ac77a42310ac80c0d5a95456e19135e875f5d13dd` |
| 13 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-42.md) | 43 | `declaration-track:d0a71dd980c487478955fe92fd3f9b7a421d1198838878c41b38eeea9bede480` |
| 14 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-32.md) | 45 | `declaration-track:9b6126c5544a233bebda334268a84052f9a9cd760e0f54dd583031e877a09d7b` |
| 15 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-53.md) | 47 | `declaration-track:eccf5227ba08284849312d5380bc1c9570ff675e248d6488e71b41b3f7d5c10d` |
| 16 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-50.md) | 49 | `declaration-track:e631d71526080567d3ea565efdd468892e6292007b6ad22015523fb0cac096a8` |
| 17 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-45.md) | 53 | `declaration-track:d94b9c4f375bb724abbdd722ef7324fe577d8924a7ffaaa298af3580ddf0fd33` |
| 18 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-39.md) | 57 | `declaration-track:b9ea9721c83cc0e6ad6ff3decbd303391f0bb2230758acc49806fc43f05495a3` |
| 19 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-28.md) | 59 | `declaration-track:8d6f296bc2c650ea6ce028f21f80fc8e5dcc8753e9007c10df342cc7d9e1caf6` |
| 20 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-25.md) | 61 | `declaration-track:8500e3c94deb087846f0ee779c8e9271dd006418b14445c03dc9dbfa8314f440` |
| 21 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-44.md) | 63 | `declaration-track:d412b1ee48f036b035ee14a23e6107787b53dccab0b52e9dedf612ef0cdfb59f` |
| 22 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-6.md) | 65 | `declaration-track:1e03e8c759217e8de94881e42f4de050c8d1b1e6603468aedf8cb0db0b259a55` |
| 23 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-55.md) | 67 | `declaration-track:f2c3b0389ed6f06edc108227b863aa196277409dcef1d05a04397f75e879f849` |
| 24 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-11.md) | 69 | `declaration-track:3d7befa71981116b61f74f5c201663430a19d6a344628e0cdac0f40b6576676a` |
| 25 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-35.md) | 73 | `declaration-track:a3cf1cf01c47bddab6f63eb829cead7e6f69c03a93fe139b35cdf2538570ecd5` |
| 26 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-12.md) | 76 | `declaration-track:3decfe3d4e87d4a2820ac4dfdfded228ce163673d6f5312c02f3fe8ac98c89a8` |
| 27 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-5.md) | 79 | `declaration-track:1bd59426c95650e23de57931db90f1ddd935e09a61a8c63b5c1ab21d52982720` |
| 28 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-23.md) | 81 | `declaration-track:7f8d5649e33fff25c49ede714952137957ebcf6aaf28b8d92ef9e38cc50c76fc` |
| 29 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-38.md) | 83 | `declaration-track:b0a7f7cc65b2aebe34844bc5bd512a6d0e8e5d711746c7847d8d8ba3e9f3a33b` |
| 30 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-18.md) | 85 | `declaration-track:568faab61a9cc5afe89a7f9f738bd1f2e7cd04b3a34853e3023590678fd16cbf` |
| 31 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-16.md) | 87 | `declaration-track:52af927f79ddbd8532c1c10d7a6b9e2aee628a4e555e5eed9c96e9b183894349` |
| 32 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-10.md) | 89 | `declaration-track:2e16dd81db16763b7d94f87dfe391da5e0f3902f973b9d794ebcc19fd2eb1255` |
| 33 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-36.md) | 91 | `declaration-track:a3fceb22d5685670de7ab5d3e6dbca29a36b26f70b0aad31492324f0c3211480` |
| 34 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-26.md) | 95 | `declaration-track:88b8c6a8192b932493aa60ead0f5c8b23b028534fae660a9636e71853b21c86b` |
| 35 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-9.md) | 97 | `declaration-track:2ba343feea67f8f0939e7021aacdf8ec36609b6108abab9b2d1b341e273468bb` |
| 36 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-22.md) | 99 | `declaration-track:7f7d9cadfb8b95eb75734d568aa767ae7ea37ea2161b3b8846834cbcdec2cfbd` |
| 37 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-48.md) | 102 | `declaration-track:e23eed6c4f598f8902e6009a4732641fbad46c8a2282ccb55c43c837be9ac353` |
| 38 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-8.md) | 105 | `declaration-track:2479c8891c9bdfc23eb5bef9b92ecee91ea9819063f5ddd5da7f2523cea334f7` |
| 39 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-47.md) | 112 | `declaration-track:dd9c0ff961f2a392367a39c2ba39dd1bad9b314d0d824911304ec80964a0b5f1` |
| 40 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-4.md) | 116 | `declaration-track:12ef560289078120b95c0fc03915dd4af0bc3cc8204627997a9e46144c439be3` |
| 41 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-40.md) | 125 | `declaration-track:bbe23189afae9b7a4d6697e065fed782565e8625610a6ccfda831a1a524f95da` |
| 42 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example.md) | 133 | `declaration-track:028021e033c2c8a5d74bce82d339ce111edd01ad194c42db3fc2a30c48ab7027` |
| 43 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-46.md) | 137 | `declaration-track:db921e9274f10a0d043031366191b74e9114d67bb7a5afe21f5755a5cd353364` |
| 44 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-21.md) | 142 | `declaration-track:7561709c48af7468f0cc9414e9ece2bbc7f2057ac220e480f9036a8e02f40f1e` |
| 45 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-33.md) | 144 | `declaration-track:9e660ff1a602d44a0ca0f9f5f4e29fd44f5e79fc4d5da3be559fcbc7ad26a71c` |
| 46 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-52.md) | 145 | `declaration-track:ec286fa8c2e766391e93cd4348cb7cb1e3f8facbb357637469546b0f15768dd8` |
| 47 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-51.md) | 146 | `declaration-track:ea83434cfe9245db948c89f768b16818aac695524ed1e9fc2f8d1ecc42dce614` |
| 48 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-57.md) | 148 | `declaration-track:fcaaefbd2941b8d9ecb0b1befa7da713f24cccb18c282248ae7e04afc1e04a33` |
| 49 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-20.md) | 154 | `declaration-track:6efd26e69b19b45730a20f810a8caaa4267d2d3151022739115eff95c19975dd` |
| 50 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-15.md) | 159 | `declaration-track:51789d38596d4162bcee2eb3c3d30f3660139e1aebac01b1200f535db258677f` |
| 51 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-29.md) | 166 | `declaration-track:91af5c9b8ca5642140c92bc8797f5757beea167eb8b021bf312f4347c674b8a4` |
| 52 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-49.md) | 176 | `declaration-track:e56df363a7ad2a71d442803b7672c1bab22de46bca086b71120707109d9c6181` |
| 53 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-14.md) | 183 | `declaration-track:41b4b61a71025fb3e56f877d32522d04995b05ed3e053b8033b90caacbc31b38` |
| 54 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-37.md) | 189 | `declaration-track:a760cd27b4cf6788911e2ccf2444dff9d8f2717d5f562c6545e0193bcddfcf7d` |
| 55 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-24.md) | 195 | `declaration-track:8138d531fbb0480794711d607eeff72520d09cd334522396d919f1e54b0c8816` |
| 56 | `axiom` | [f](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/f.md) | 200 | `declaration-track:8248c93651c292e57e5d8fd218441f5b616e24c751eca883eb5f3d55b4554cfa` |
| 57 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-30.md) | 202 | `declaration-track:95201b1ee6484f3c8dee9b544e92aa79351dceaa33523aeb855307029f33923e` |
| 58 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-3.md) | 208 | `declaration-track:0b79dc6847caffd5789c801e589c25d46c0d1b6e62343e1fc70b6c748e6bd0db` |
| 59 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-27.md) | 214 | `declaration-track:8a0e1cc3f0335520186681ab79e1c812d7bfe75153de175fb0ef99f537ba1666` |
| 60 | `def` | [dontUnfoldMe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/dontunfoldme.md) | 219 | `declaration-track:d36181350567a05c673450fbc3dc818041238a5ab72db1dfbcda5d593232b393` |
| 61 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-31.md) | 224 | `declaration-track:9a001fc53dc56c2ed1ead4375a4fd3578e2b726b5afae9ca48e7e1d451f23e56` |
| 62 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-34.md) | 231 | `declaration-track:9f68fbb38fa31913ffa2e8630f32c1c9f49d1bf8ea5b40ff8753c238904dbb7d` |
| 63 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-7.md) | 236 | `declaration-track:1f4dfb8fc31878eadeb59a1e81c85951f0a9c4f6f3147b9dfeaca6512c2f52c7` |
| 64 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Inequalities.lean/declarations/example-source-edition-43.md) | 244 | `declaration-track:d2d14249340cbcc86da0ef0efda0a02360120d5231b63ee8de28c7f03ab817e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed11b475b0ffa29d1930510458e9128900aeb0bad0b3200fe9008665467ea3d0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Inequalities/Variant4553538d1999847b4e8074b67cd26d73be3126c9b2c43961da0203b21f1be06e.lean","GRWTSK/_verification/specifications/Algebra/Inequalities/Variant4553538d1999847b4e8074b67cd26d73be3126c9b2c43961da0203b21f1be06e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
