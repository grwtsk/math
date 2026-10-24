# Verification target: GRWTSK.Topology.MetricTopology.PiNat.Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec4e50ee38c606a26670c8224108b37944880ea0",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec4e50ee38c606a26670c8224108b37944880ea0`.

Source path: `GRWTSK/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [apply_firstDiff_ne](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/apply-firstdiff-ne--d6697a4d8849d17fa64c03be.md) | 81 | `result-track:d6697a4d8849d17fa64c03bea35ddfa29c2d8b24a5ec892b322fe5743497436b` |
| 2 | `theorem` | [apply_eq_of_lt_firstDiff](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/apply-eq-of-lt-firstdiff--6b52837295243e740598b50d.md) | 87 | `result-track:6b52837295243e740598b50d2b702e89a5dfc316749745f3a5292e40efa8b1e0` |
| 3 | `theorem` | [firstDiff_comm](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/firstdiff-comm--0cffcfea2b43f6ca5ed63423.md) | 95 | `result-track:0cffcfea2b43f6ca5ed63423a2a0da5d28d85f2bc40aa4d3a0bb5e711332ec1d` |
| 4 | `theorem` | [min_firstDiff_le](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/min-firstdiff-le--c471cfdddc330419f4ec5d88.md) | 99 | `result-track:c471cfdddc330419f4ec5d880b42f100e4f33185b462adf67a041864f0f24bfc` |
| 5 | `def` | [cylinder](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/cylinder--150168929962263fea455022.md) | 115 | `declaration-track:150168929962263fea4550225df2a6f04b34feeef3bd7857ed73030dec62c2cc` |
| 6 | `theorem` | [cylinder_eq_pi](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/cylinder-eq-pi--5af0f7ed9718e0c8bbbad213.md) | 119 | `result-track:5af0f7ed9718e0c8bbbad213a42f279d48f6c414915e1c6403943b5f149edef1` |
| 7 | `theorem` | [cylinder_zero](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/cylinder-zero--657fa2dcb42363e86c45929f.md) | 126 | `result-track:657fa2dcb42363e86c45929f4e3a37742c91693c3b50dbd1c24e1b947647421f` |
| 8 | `theorem` | [cylinder_anti](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/cylinder-anti--6e4888cd16dec23023e84a49.md) | 129 | `result-track:6e4888cd16dec23023e84a49464679bf4c2cb6dc5e97652269cb97ba39e663bc` |
| 9 | `theorem` | [mem_cylinder_iff](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/mem-cylinder-iff--f9abef86a5ceb8e3afffd783.md) | 134 | `result-track:f9abef86a5ceb8e3afffd7838a7f7b0dfb75590c3e208325ce13a91660075151` |
| 10 | `theorem` | [self_mem_cylinder](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/self-mem-cylinder--7d404f65aea8da55edcaf293.md) | 138 | `result-track:7d404f65aea8da55edcaf293ea1e8f233a6de503b36050499b07c1bd94cc5874` |
| 11 | `theorem` | [mem_cylinder_iff_eq](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/mem-cylinder-iff-eq--faa476ff55a2ffbf6ef32d02.md) | 141 | `result-track:faa476ff55a2ffbf6ef32d02e28b704f68ca1eb72a685cb90505995fa789be79` |
| 12 | `theorem` | [mem_cylinder_comm](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/mem-cylinder-comm--82e515b72c87d20ed38eae8d.md) | 157 | `result-track:82e515b72c87d20ed38eae8d68a03dcf48a0744dfef4ba893562d5eeb1b771a3` |
| 13 | `theorem` | [mem_cylinder_iff_le_firstDiff](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/mem-cylinder-iff-le-firstdiff--016f3030867a59e71f7b3436.md) | 161 | `result-track:016f3030867a59e71f7b3436d7c9b168b034fa632dc9fdab59d66df6d08b32aa` |
| 14 | `theorem` | [mem_cylinder_firstDiff](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/mem-cylinder-firstdiff--c1c40baa08da78d66943b29a.md) | 171 | `result-track:c1c40baa08da78d66943b29ade2ee1dec9747ff8d3cf9fc04c726a45a0d85466` |
| 15 | `theorem` | [cylinder_eq_cylinder_of_le_firstDiff](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/cylinder-eq-cylinder-of-le-firstdiff--ca10b76dfcc79449da3fe18a.md) | 175 | `result-track:ca10b76dfcc79449da3fe18ac9cc180203d4cd8b11b69e19e4a4993c92f931bb` |
| 16 | `theorem` | [iUnion_cylinder_update](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/iunion-cylinder-update--526a06d9d0002df17a13fdbd.md) | 182 | `result-track:526a06d9d0002df17a13fdbd52c161907be997ea8876fa864aabcb8abbd7d674` |
| 17 | `theorem` | [update_mem_cylinder](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/update-mem-cylinder--a8d3fc2611a1c59e6633d9b3.md) | 196 | `result-track:a8d3fc2611a1c59e6633d9b360f7bb2bf67377819a4dc5f5b1392f8fb90e26ea` |
| 18 | `def` | [res](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/res--786f5e9abc88fe5e3c061df1.md) | 210 | `declaration-track:786f5e9abc88fe5e3c061df1ad2140e1ac8d5ce648021af4473cebac176ab83d` |
| 19 | `theorem` | [res_zero](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/res-zero--fe63675001675a7c9efac002.md) | 216 | `result-track:fe63675001675a7c9efac00221492cbb7d9cbea5cb31a95a46a571e2d3da7e39` |
| 20 | `theorem` | [res_succ](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/res-succ--16977161c978297cf1b718a9.md) | 221 | `result-track:16977161c978297cf1b718a93ac5d19abe480d9f2e182b72e8b3142e411d3f79` |
| 21 | `theorem` | [res_length](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/res-length--70d93bad4f92f1fddb760a1a.md) | 226 | `result-track:70d93bad4f92f1fddb760a1a4248053a6d062172bac59b0fe2aae94d62c16a13` |
| 22 | `theorem` | [res_eq_res](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/res-eq-res--5bf29e8d4e1bad2813f18806.md) | 230 | `result-track:5bf29e8d4e1bad2813f18806ac82927f2fc1ae1a6094cedc6ed65140a316a1a9` |
| 23 | `theorem` | [res_injective](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/res-injective--7945cac1e3f60c1e4dd29b2a.md) | 246 | `result-track:7945cac1e3f60c1e4dd29b2a6eca36edb9cb08640a8d1e4d7d4aac2d0e495887` |
| 24 | `theorem` | [cylinder_eq_res](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/cylinder-eq-res--b8857175fcbe308f4081018c.md) | 254 | `result-track:b8857175fcbe308f4081018c8b84ed7fa1d51a3e315886acf469c4fd74aeca18` |
| 25 | `def` | [dist](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/dist--56fa524a01ca0d1f64d8fdd6.md) | 275 | `declaration-track:56fa524a01ca0d1f64d8fdd6d8f9b3992be633eb6605af0fc00c68b4d4418a9a` |
| 26 | `theorem` | [dist_eq_of_ne](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/dist-eq-of-ne--b73d6a6d2b608c849ed6805e.md) | 281 | `result-track:b73d6a6d2b608c849ed6805ee32a2004fcaad063d0e3ece946e81ad2d248c7f0` |
| 27 | `theorem` | [dist_self](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/dist-self--c0ad7fea3ad9f104f0a506d6.md) | 285 | `result-track:c0ad7fea3ad9f104f0a506d69875ad29e0f0704ce2487fb0bc8ddf0de0553045` |
| 28 | `theorem` | [dist_comm](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/dist-comm--1a21d5d16813b8c71f5404df.md) | 288 | `result-track:1a21d5d16813b8c71f5404dfc5b312dc5240af74947a69a795f29891a149f044` |
| 29 | `theorem` | [dist_nonneg](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/dist-nonneg--2c0ca352888a6016e275d6a9.md) | 292 | `result-track:2c0ca352888a6016e275d6a992464e020f2ffd0d4517de244fd98dc4a22fcfe6` |
| 30 | `theorem` | [dist_triangle_nonarch](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/dist-triangle-nonarch--1d5f4875ff2a4655d875508e.md) | 298 | `result-track:1d5f4875ff2a4655d875508e95247f52a0b3f25efaf6641b51f337489fd7a0ac` |
| 31 | `theorem` | [dist_triangle](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/dist-triangle--9ba6a96d79ee9096afca304f.md) | 310 | `result-track:9ba6a96d79ee9096afca304f2f75b53c4f0266feef9264db7c3c2996b463b556` |
| 32 | `theorem` | [eq_of_dist_eq_zero](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/eq-of-dist-eq-zero--75cea6d99ff46953bcc93c30.md) | 316 | `result-track:75cea6d99ff46953bcc93c304488697c1ab53c6652e94ef8bbadf20e24c8e292` |
| 33 | `theorem` | [mem_cylinder_iff_dist_le](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/mem-cylinder-iff-dist-le--ae13e974319771c16f58d57f.md) | 322 | `result-track:ae13e974319771c16f58d57fdf7cda62664c757a46e26bf8f0b2fc2525844a70` |
| 34 | `theorem` | [apply_eq_of_dist_lt](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/apply-eq-of-dist-lt--ca01b2074206934dfc95fd77.md) | 335 | `result-track:ca01b2074206934dfc95fd77f70a0d123b3372f2a0f6d95aa8353ce8cc45580c` |
| 35 | `theorem` | [lipschitz_with_one_iff_forall_dist_image_le_of_mem_cylinder](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/lipschitz-with-one-iff-forall-dist-image-le-of-mem-cylinder--e6a237642a1019cc1a3254e8.md) | 347 | `result-track:e6a237642a1019cc1a3254e89eac1d80c72beb3f1e70f974780778ee0aa2c33c` |
| 36 | `theorem` | [isOpen_cylinder](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/isopen-cylinder--b15414670b97dcba5aef1a74.md) | 368 | `result-track:b15414670b97dcba5aef1a743ef648f876bf191507c5d46a9b98638560a1f88e` |
| 37 | `theorem` | [isTopologicalBasis_cylinders](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/istopologicalbasis-cylinders--faa54faf3959637e9870d7fd.md) | 373 | `result-track:faa54faf3959637e9870d7fd6429680f47a8fa58c8916f94e882a6f511585e2d` |
| 38 | `theorem` | [isOpen_iff_dist](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/isopen-iff-dist--faffbf7b51fb2e9ee9675b21.md) | 398 | `result-track:faffbf7b51fb2e9ee9675b219132521f35f605f8a7419f74eeb8b5f10ef321e6` |
| 39 | `def` | [metricSpace](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/metricspace--e8d1ab7f7aed03e080b655ed.md) | 424 | `declaration-track:e8d1ab7f7aed03e080b655edb8814185636a03d924ddd7505aabd0e12616a9a8` |
| 40 | `def` | [metricSpaceOfDiscreteUniformity](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/metricspaceofdiscreteuniformity--8a83a068d6f719b65acc4028.md) | 432 | `declaration-track:8a83a068d6f719b65acc4028053e92476e6bac0b736b0603be294272fb5d1906` |
| 41 | `def` | [metricSpaceNatNat](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/metricspacenatnat--b24303a822d925115306bee7.md) | 470 | `declaration-track:b24303a822d925115306bee75f390254f7196bcd47a80109ca3f12644c2242d3` |
| 42 | `theorem` | [completeSpace](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/completespace--ca82544939bf7dd7734ef04c.md) | 476 | `result-track:ca82544939bf7dd7734ef04c29caf5f6676b85aa374c5064572eb76242dbdfff` |
| 43 | `theorem` | [exists_disjoint_cylinder](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/exists-disjoint-cylinder--eaf1759eb0428d26e5ccef1e.md) | 495 | `result-track:eaf1759eb0428d26e5ccef1e070e322bd866dda9620dfb481b3ced74c1761621` |
| 44 | `def` | [shortestPrefixDiff](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/shortestprefixdiff--7208cafdc6f3d3eb675d9827.md) | 514 | `declaration-track:7208cafdc6f3d3eb675d9827c639277fede9ed0b6328321e1c23fcbae313b9a2` |
| 45 | `theorem` | [firstDiff_lt_shortestPrefixDiff](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/firstdiff-lt-shortestprefixdiff--8cb8174e151826889b75d47d.md) | 518 | `result-track:8cb8174e151826889b75d47d7b2e15c4ed797622a4a34417efddb831549c8774` |
| 46 | `theorem` | [shortestPrefixDiff_pos](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/shortestprefixdiff-pos--be288d02d1186b50c9b93b33.md) | 530 | `result-track:be288d02d1186b50c9b93b33de7dae8ec8cd52faa74e60e487e46de0474f145a` |
| 47 | `def` | [longestPrefix](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/longestprefix--ec732a9fefc59b4fef1c196d.md) | 539 | `declaration-track:ec732a9fefc59b4fef1c196d471df90d776793e69e96681d29c4cdcb7720736a` |
| 48 | `theorem` | [firstDiff_le_longestPrefix](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/firstdiff-le-longestprefix--120206e6c958fe7e219e7d47.md) | 543 | `result-track:120206e6c958fe7e219e7d47d4a0d433decde0952aa7fe2504978fa9c49465c4` |
| 49 | `theorem` | [inter_cylinder_longestPrefix_nonempty](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/inter-cylinder-longestprefix-nonempty--b7903dc8943837e0d94d8fd7.md) | 550 | `result-track:b7903dc8943837e0d94d8fd72a28a978290779fe077a0dd32aabc74b9758dd2e` |
| 50 | `theorem` | [disjoint_cylinder_of_longestPrefix_lt](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/disjoint-cylinder-of-longestprefix-lt--2c7dc9ce2c980e070961d494.md) | 565 | `result-track:2c7dc9ce2c980e070961d4941f5fb7cfa17e2d665be8768134008928af4218d8` |
| 51 | `theorem` | [cylinder_longestPrefix_eq_of_longestPrefix_lt_firstDiff](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/cylinder-longestprefix-eq-of-longestprefix-lt-firstdiff--3bd5eca59833cd209be2da0d.md) | 577 | `result-track:3bd5eca59833cd209be2da0d42a36a68de9da3dbbbe3cdceaeee840df6ad9531` |
| 52 | `theorem` | [exists_lipschitz_retraction_of_isClosed](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/exists-lipschitz-retraction-of-isclosed--8b0440303605605b9861e57d.md) | 603 | `result-track:8b0440303605605b9861e57d418935a55f42fb805b3a91cef9faabb71bd1e5b2` |
| 53 | `theorem` | [exists_retraction_of_isClosed](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/exists-retraction-of-isclosed--ec61ee44436f6eb579135b29.md) | 707 | `result-track:ec61ee44436f6eb579135b29e89750df8320033a76792a2e8285c6a33e7b5947` |
| 54 | `theorem` | [exists_retraction_subtype_of_isClosed](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/exists-retraction-subtype-of-isclosed--40c8c74a9d6bd9e454993146.md) | 713 | `result-track:40c8c74a9d6bd9e4549931463cf0f52bb1f0dfdfeab8f6aec8b3c624e43f8467` |
| 55 | `theorem` | [exists_nat_nat_continuous_surjective_of_completeSpace](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/exists-nat-nat-continuous-surjective-of-completespace--e5bdc2d5c68a3cda4349c64e.md) | 730 | `result-track:e5bdc2d5c68a3cda4349c64e9f1cd6e169f41855589bbf3a6f322a766f6d3efa` |
| 56 | `def` | [dist](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/dist--98d207cb3504b25d99be986b.md) | 830 | `declaration-track:98d207cb3504b25d99be986bc4fd1a75492c9a1f3b615a701d3311bbc6dac55f` |
| 57 | `theorem` | [dist_eq_tsum](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/dist-eq-tsum--853e7bb2276d0feb6e4f0422.md) | 836 | `result-track:853e7bb2276d0feb6e4f04222eef40162e168a6580a16210a5dc20f4c7d8bddd` |
| 58 | `theorem` | [dist_summable](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/dist-summable--6cfbc9dea511312bc60246fc.md) | 841 | `result-track:6cfbc9dea511312bc60246fc0ef086a4eca6bd8038c6a993c89470fbc5fc3588` |
| 59 | `theorem` | [min_dist_le_dist_pi](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/min-dist-le-dist-pi--8e5af467384476fb1d3b9c62.md) | 848 | `result-track:8e5af467384476fb1d3b9c620fe1d38f25778017b959aa16af2ac8bf0bc1cc0f` |
| 60 | `theorem` | [dist_le_dist_pi_of_dist_lt](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/dist-le-dist-pi-of-dist-lt--c31a5ef352ed814736ca33e9.md) | 853 | `result-track:c31a5ef352ed814736ca33e9bb4b2f857c73d0a406f71011a0d62139687f7f80` |
| 61 | `def` | [metricSpace](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/declarations/metricspace--ea6746ad440ed79abb8322f3.md) | 866 | `declaration-track:ea6746ad440ed79abb8322f3f5cf3feed38520a9f8b0cb15c7d99c953bcb5023` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
