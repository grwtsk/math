# Verification target: Nat Int

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7cead22bb4018e5b94547937b35c1bd6bf4187cd",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NatInt/Variant3ba4ef8b9665e9450888e887e5058028d869f2ddc594e5727484e240929e3590.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7cead22bb4018e5b94547937b35c1bd6bf4187cd`.

Source path: `GRWTSK/Topology/GeneralTopology/NatInt/Variant3ba4ef8b9665e9450888e887e5058028d869f2ddc594e5727484e240929e3590.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NatInt/Variant3ba4ef8b9665e9450888e887e5058028d869f2ddc594e5727484e240929e3590.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Encodable.Lattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Finset` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Group` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasProd.tendsto_prod_nat](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/hasprod-tendsto-prod-nat.md) | 44 | `result-track:b4ae5e1e4b92129aeb621219f649d3079d8660e3a7380b979ae8bd58f9332e11` |
| 2 | `theorem` | [Multipliable.tendsto_prod_tprod_nat](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/multipliable-tendsto-prod-tprod-nat.md) | 52 | `result-track:11aae2aede08dded16c632b7deeee25dbafef2f93b34ddfb451c7f9be830de72` |
| 3 | `theorem` | [prod_range_mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/prod-range-mul.md) | 69 | `result-track:f9ba345bbf267965c3d601449f5deba22d55a0c2c804b9c78bc617f1fe852889` |
| 4 | `theorem` | [zero_mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/zero-mul.md) | 75 | `result-track:d7b0fad7bfef9df589f24e531a32896417ca34b28ef14fd2dacd924d56b29d87` |
| 5 | `theorem` | [even_mul_odd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/even-mul-odd-source-edition-2.md) | 80 | `result-track:a1cb79fb06d711db16b4a5ea06cbb1b474ce898424ecc5ba3515fff305818070` |
| 6 | `theorem` | [hasProd_iff_tendsto_nat](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/hasprod-iff-tendsto-nat.md) | 94 | `result-track:dd92bd1c84cf7f89c0e1fd787021ce58ed834b40b29e02298b3883c57c656f03` |
| 7 | `theorem` | [comp_nat_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/comp-nat-add.md) | 105 | `result-track:46400cebabb4da0f5b11c4af75463ab1868fac3e568661c9958fdb6ba6d953e3` |
| 8 | `theorem` | [even_mul_odd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/even-mul-odd.md) | 109 | `result-track:740c2902c60e71282d4168312da87cffdd9e094473f9ef20689ac74b87689b72` |
| 9 | `theorem` | [tprod_iSup_decode₂](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/tprod-isup-decode.md) | 129 | `result-track:bdf6ac6512f8cc1d3bbbada9dcedcbb1c9389c777d1fff81e47d3a89c1921664` |
| 10 | `theorem` | [tprod_iUnion_decode₂](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/tprod-iunion-decode.md) | 141 | `result-track:f87890916ecbd8e816aeb338ee02c1346df1e4361d1cf7ce50eb047c34b63a6b` |
| 11 | `theorem` | [rel_iSup_tprod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/rel-isup-tprod.md) | 158 | `result-track:451acabfc36282889bb52e00d44899a0818ead1f91a72b8419c056f45a9c541a` |
| 12 | `theorem` | [rel_iSup_prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/rel-isup-prod.md) | 167 | `result-track:efaf69229a10a9d1bf387edca22203791723f1a0b224ea71bc865bc2ccc23166` |
| 13 | `theorem` | [rel_sup_mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/rel-sup-mul.md) | 175 | `result-track:e679208b139e0285a75569498f817ae3cbaf502408cf1391b2f2e84d7b5abec6` |
| 14 | `theorem` | [Multipliable.prod_mul_tprod_nat_mul'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/multipliable-prod-mul-tprod-nat-mul.md) | 189 | `result-track:1f4ccdd1e81972fd3c39e42f9a98087b689fa4294f2a9ade6039d8434826f46a` |
| 15 | `theorem` | [tprod_eq_zero_mul'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/tprod-eq-zero-mul.md) | 199 | `result-track:701a085810465519b1ae4f4c91245ffb5b7c97ec4114056bc962b1d2940d5de4` |
| 16 | `theorem` | [tprod_even_mul_odd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/tprod-even-mul-odd.md) | 205 | `result-track:7a399fb78a874efe0b830a4033f96cfd02f0cbe7b88bda4f398663a56553463f` |
| 17 | `theorem` | [hasProd_nat_add_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/hasprod-nat-add-iff.md) | 221 | `result-track:a5c6230439c83d397f1352d1cbce987c2c9144d3a57f32203eb3bc4bc18c2433` |
| 18 | `theorem` | [multipliable_nat_add_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/multipliable-nat-add-iff.md) | 227 | `result-track:00e356b58a0c6cd2ee76269f13669222a021d93445e8c0727ca71918417618f5` |
| 19 | `theorem` | [hasProd_nat_add_iff'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/hasprod-nat-add-iff-source-edition-2.md) | 234 | `result-track:b5e180c294576f2167f781fc1d62106927c2529724c7e5f79274b2ce3d13782a` |
| 20 | `theorem` | [Multipliable.prod_mul_tprod_nat_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/multipliable-prod-mul-tprod-nat-add.md) | 239 | `result-track:41c7a70a6eabcc3e01d01a098af943cb4e9313c67b7ead3acba3aff4cb87c3df` |
| 21 | `theorem` | [Multipliable.tprod_eq_zero_mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/multipliable-tprod-eq-zero-mul.md) | 249 | `result-track:488c27a50e070a8fb2c1d283dc8b04a4215e6a31183a6f08186b8338e6c99727` |
| 22 | `theorem` | [tendsto_prod_nat_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/tendsto-prod-nat-add.md) | 261 | `result-track:032749f4e00db366551b8227bfbf9cd032c6975ec9026937634a080b3c527cc6` |
| 23 | `theorem` | [cauchySeq_finset_iff_nat_tprod_vanishing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/cauchyseq-finset-iff-nat-tprod-vanishing.md) | 279 | `result-track:d1eae122678292473d0884c2d79ff9f4a05365503006430777ace2c4dbccf863` |
| 24 | `theorem` | [multipliable_iff_nat_tprod_vanishing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/multipliable-iff-nat-tprod-vanishing.md) | 296 | `result-track:0ff55f2aad03144586a1688a15131fb64e4cacd82dd0a0492219113c8ecdd144` |
| 25 | `theorem` | [Multipliable.nat_tprod_vanishing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/multipliable-nat-tprod-vanishing.md) | 307 | `result-track:ac820eb79288b41df683660738eecb517b204eb3bd53a4780a1f39d6e00b6230` |
| 26 | `theorem` | [Multipliable.tendsto_atTop_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/multipliable-tendsto-attop-one.md) | 314 | `result-track:5bfa0c6500f3dfafd7a4e5bb8fbf82899dd8c42de0d5ff44b89c71a33a741c26` |
| 27 | `lemma` | [HasProd.nat_mul_neg_add_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/hasprod-nat-mul-neg-add-one.md) | 334 | `result-track:17081d590357a65bfdba4014fc38c412af32875f1a10c3b3a54198c7d32fec15` |
| 28 | `lemma` | [Multipliable.nat_mul_neg_add_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/multipliable-nat-mul-neg-add-one.md) | 351 | `result-track:614d7398391346c5575e0c19d6c467808aad24ebef1a3e41eed1ef7d6fa78bce` |
| 29 | `lemma` | [tprod_nat_mul_neg_add_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/tprod-nat-mul-neg-add-one.md) | 356 | `result-track:779f08e1efc9066c0c4c750ce1b3717260cb51c82090e78e2db0515b6826db02` |
| 30 | `lemma` | [HasProd.of_nat_of_neg_add_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/hasprod-of-nat-of-neg-add-one.md) | 365 | `result-track:eaa1ab8af5eb2ba0146ddbbc5799c0abb69534a2d86065619c2ab8795b2d1d31` |
| 31 | `lemma` | [Multipliable.of_nat_of_neg_add_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/multipliable-of-nat-of-neg-add-one.md) | 380 | `result-track:9098f9492b9ca3c334ff73800fcad12ebe01b7414ac94bc847505cea16a790f9` |
| 32 | `lemma` | [tprod_of_nat_of_neg_add_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/tprod-of-nat-of-neg-add-one.md) | 386 | `result-track:25c6a50b6ce3f8bb4b38b7d81eae59e9019c77128f3dbe44f4d994e5e44bab64` |
| 33 | `lemma` | [HasProd.int_rec](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/hasprod-int-rec.md) | 397 | `result-track:07903346546dd866e398f11d659e615dcf3f583ab469ce419d0855729a387332` |
| 34 | `lemma` | [Multipliable.int_rec](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/multipliable-int-rec.md) | 405 | `result-track:630d041b6f57098311618fd22648ef628ce5ad05a29c3223667a8d16c8782af0` |
| 35 | `lemma` | [tprod_int_rec](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/tprod-int-rec.md) | 415 | `result-track:f13871dc65fc87858d6e944f0ed4c82109336d1179a802fd977930e8d7e2f847` |
| 36 | `theorem` | [HasProd.nat_mul_neg](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/hasprod-nat-mul-neg.md) | 420 | `result-track:d3d42d0ec8e084bc0ae6183c8b5f8db5ce2c6f0cd888dc857c13fc47a817cc25` |
| 37 | `theorem` | [Multipliable.nat_mul_neg](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/multipliable-nat-mul-neg.md) | 457 | `result-track:d658f5e61409d87b08155dbd0996a1939490d660c5af6616535c17578484f1ab` |
| 38 | `lemma` | [tprod_nat_mul_neg](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/tprod-nat-mul-neg.md) | 462 | `result-track:698081e10f4c1e51d015e6023bd495d908eeb7d7bfb61d97fc807b2fd38d0bee` |
| 39 | `theorem` | [HasProd.of_add_one_of_neg_add_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/hasprod-of-add-one-of-neg-add-one.md) | 467 | `result-track:9ca489c242482eab860860bfec62dd8a67b2e4f82d6796a675d23bf127567865` |
| 40 | `lemma` | [Multipliable.of_add_one_of_neg_add_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/multipliable-of-add-one-of-neg-add-one.md) | 473 | `result-track:4c09bee978c9f0884c640657fe0f1838bcc203f2aa5e78be781a19c377059daa` |
| 41 | `lemma` | [tprod_of_add_one_of_neg_add_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/tprod-of-add-one-of-neg-add-one.md) | 479 | `result-track:c47e22be019b91a47200af58244d684d803e4b5847ae19f8c0dc437b6cc49f0a` |
| 42 | `lemma` | [HasProd.of_nat_of_neg](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/hasprod-of-nat-of-neg.md) | 493 | `result-track:ce7b6312152c7affa324bc498271be93ee84889bfaefdfcf3681a1a51a5f0c40` |
| 43 | `lemma` | [Multipliable.of_nat_of_neg](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/multipliable-of-nat-of-neg.md) | 499 | `result-track:581d1e31504808f355f26d76dbe36cd3ba050eb1217009557b8c375b5c116a66` |
| 44 | `lemma` | [Multipliable.tprod_of_nat_of_neg](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/multipliable-tprod-of-nat-of-neg.md) | 504 | `result-track:2c82b14a3dca917e0d13060dd2c65a74385575ac3e1db06064db0e9c1086b2ff` |
| 45 | `lemma` | [multipliable_int_iff_multipliable_nat_and_neg_add_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/multipliable-int-iff-multipliable-nat-and-neg-add-one.md) | 522 | `result-track:80cd220168722d95e457c1634d90080d9273e494f67375065b72662e4300a5f9` |
| 46 | `lemma` | [multipliable_int_iff_multipliable_nat_and_neg](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/multipliable-int-iff-multipliable-nat-and-neg.md) | 530 | `result-track:05944c4dcd7ae98a41ef9194da62da4c9b47f6d830aac959af4f599d2f715ed8` |
| 47 | `theorem` | [pnat_multipliable_iff_multipliable_succ](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/pnat-multipliable-iff-multipliable-succ.md) | 543 | `result-track:a0172fdfc0eed045fc1f740e7d0b70fa58da9a7a8d5d938bee28018c9a132dcb` |
| 48 | `theorem` | [tprod_pnat_eq_tprod_succ](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NatInt.lean/declarations/tprod-pnat-eq-tprod-succ.md) | 548 | `result-track:2365382e6eac167f967afd404ab55e06b241c956ac5563a1843424c5f7281784` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=44a0201c19a38523b178b023dbb21d103200190a19684e5e4c66299b98d8553b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/NatInt/Variant3ba4ef8b9665e9450888e887e5058028d869f2ddc594e5727484e240929e3590.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/NatInt/Variant3ba4ef8b9665e9450888e887e5058028d869f2ddc594e5727484e240929e3590.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
