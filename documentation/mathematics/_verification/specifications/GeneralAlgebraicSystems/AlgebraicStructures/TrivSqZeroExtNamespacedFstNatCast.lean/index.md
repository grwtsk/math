# Verification target: Triv Sq Zero Ext Namespaced Fst Nat Cast

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5312a3843b058f246d7bded10f6a2aa1f41a956a",
  "lexical_observation_count": 117,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TrivSqZeroExt/Variant5dc6b52b4b0c4d29ff7c7dfe2baa3b110a897a8e850ff2f32afce4810197c30d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5312a3843b058f246d7bded10f6a2aa1f41a956a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TrivSqZeroExt/Variant5dc6b52b4b0c4d29ff7c7dfe2baa3b110a897a8e850ff2f32afce4810197c30d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TrivSqZeroExt/Variant5dc6b52b4b0c4d29ff7c7dfe2baa3b110a897a8e850ff2f32afce4810197c30d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Prod` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TrivSqZeroExt](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/trivsqzeroext.md) | 67 | `declaration-track:6c469545f2295cee37d4660a7a44f99d918b0952f39c55b736610ecb764e5a6f` |
| 2 | `def` | [inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/inl.md) | 85 | `declaration-track:f6b0d9de86a663759d8f2d4b3c40f85e477d790049f32e45ac962dec41bd92d8` |
| 3 | `def` | [inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/inr.md) | 90 | `declaration-track:2c048f9eae62d19ac9f9d5ad5de2232ec42926146cb1dcd880dc74479ffa844a` |
| 4 | `def` | [fst](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/fst.md) | 95 | `declaration-track:a8024e5009a9804b179e27a35b01dd61972bbf4b99364f27927afd1a2208444d` |
| 5 | `def` | [snd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/snd.md) | 100 | `declaration-track:0323cb32b9089341493506a349b7edc18ea685b91ccb1759430d44ea600f5ce3` |
| 6 | `theorem` | [fst_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/fst-mk.md) | 105 | `result-track:78bb407c4b721e4d54e92e9cbb3f07fa47f0cccd9b50f1601721f8feec252297` |
| 7 | `theorem` | [snd_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/snd-mk.md) | 110 | `result-track:445b5a7338a0b79fa8382c16844a3ec52b02c281e56ce0a55364d51990070a8c` |
| 8 | `theorem` | [ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/ext.md) | 115 | `result-track:25f618e0bd41c75d34ccf7f8cc8a4e1551187e30bbcd5ae58747c4e57ba3a818` |
| 9 | `theorem` | [fst_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/fst-inl.md) | 124 | `result-track:37d1d350e353db1e4a76910ccd1e519eeae38cea73a46a23298538d99bba5388` |
| 10 | `theorem` | [snd_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/snd-inl.md) | 129 | `result-track:5ffa90ae6f4983e6bfe6483e645803f4215c34ef492ebab5295b961d21b70de5` |
| 11 | `theorem` | [fst_comp_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/fst-comp-inl.md) | 134 | `result-track:fa5f48c137f1e088c963340925a5748d17cfdb518e4f96046252d2eb7d42b2c2` |
| 12 | `theorem` | [snd_comp_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/snd-comp-inl.md) | 139 | `result-track:050670b2a9064133dfbeb7e52a989f37b491328704397e4ec829db157f3f1e5e` |
| 13 | `theorem` | [fst_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/fst-inr.md) | 150 | `result-track:74d2044f2074b9290c7543ff2520b29408d776e81fe4a13642b62b306c2f3416` |
| 14 | `theorem` | [snd_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/snd-inr.md) | 155 | `result-track:1a0c39c9d7273ce2c758d429b15925fbe1a21540ca3a3ac80b26f895acc51bdb` |
| 15 | `theorem` | [fst_comp_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/fst-comp-inr.md) | 160 | `result-track:1931e69bf96eb81bdf523ea2e35f9a67dfde870a601a44a8672e183745c62eba` |
| 16 | `theorem` | [snd_comp_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/snd-comp-inr.md) | 165 | `result-track:45045ea1395d14cef9d312282259f82c86bcc4a9a1db967eba05a83f01dd6a07` |
| 17 | `theorem` | [inl_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/inl-injective.md) | 171 | `result-track:a651f7a7e5968efa38436acc53b1befc4fa4c8eb9e01b53e5622a21cb6fc448b` |
| 18 | `theorem` | [inr_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/inr-injective.md) | 175 | `result-track:80c324ac42838937228eb89aeb5be40518c09cbf0d8c9cc2186a3a37b9cf17e3` |
| 19 | `instance` | [inhabited](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/inhabited.md) | 190 | `declaration-track:2d8355a68fe624f837f0bc54b7efe79731fe195dbec37cdfdd048c08148d9abc` |
| 20 | `instance` | [zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/zero.md) | 193 | `declaration-track:95dca173191145c6b35456e3bd1602fb8b6f9a1a26e0b533d97b3afa87c08d17` |
| 21 | `instance` | [add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/add.md) | 196 | `declaration-track:86b2138cb4fd47841cd64a83b6bd1b292c7d1e20d74264e4910a32feadca9fb1` |
| 22 | `instance` | [sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/sub.md) | 199 | `declaration-track:b760e33141dea14281d6a11bf41e9a202cea94691781c6d6f011c657dda78da1` |
| 23 | `instance` | [neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/neg.md) | 202 | `declaration-track:66b6ca8ef7c223fc9e98e354041b45bebf96d92ebd752992c4ba013ec4138b7c` |
| 24 | `instance` | [addSemigroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/addsemigroup.md) | 205 | `declaration-track:59895aeca57e564cd7e2cdb6060160398467434c9d8edff1b7c8cef9f0a7e4f6` |
| 25 | `instance` | [addZeroClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/addzeroclass.md) | 208 | `declaration-track:2373d4405470a41a1263142bcf326f815fbbbc6a34f82a73693870433b9e89e5` |
| 26 | `instance` | [addMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/addmonoid.md) | 211 | `declaration-track:02555596644c754de6243de909aa2bc8373f4258aa0557795e2a4b29556e4c26` |
| 27 | `instance` | [addGroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/addgroup.md) | 214 | `declaration-track:41f3850a993a5cb756489a6b41571d4621345ab103b08bb8516044533880b0e4` |
| 28 | `instance` | [addCommSemigroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/addcommsemigroup.md) | 217 | `declaration-track:c876792174345665d9af4060b924123fce9ca9e8192965cc294a3187e88c0ba0` |
| 29 | `instance` | [addCommMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/addcommmonoid.md) | 220 | `declaration-track:00e98ffd8cc35a070658d673b4f31587973a7dfb85fa8ad2434f5ae929687f04` |
| 30 | `instance` | [addCommGroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/addcommgroup.md) | 223 | `declaration-track:a7f620e2d5fd0498dbf888e3ae5548145c38c0c946f096dbe7732905730d40ca` |
| 31 | `instance` | [smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/smul.md) | 226 | `declaration-track:b93a886f3b1da0da75fb8a0844ae4065479268863731a7e7297c630800ed08e8` |
| 32 | `instance` | [isScalarTower](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/isscalartower.md) | 229 | `declaration-track:e0da0f4c4c636b57727cfed73724689fc65ac0772f0405219dbc00f3e926a9e0` |
| 33 | `instance` | [smulCommClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/smulcommclass.md) | 233 | `declaration-track:adce6224e6256f6d2bc7617a01ed727fea33b603561fa6d6ec25218b92af4628` |
| 34 | `instance` | [isCentralScalar](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/iscentralscalar.md) | 237 | `declaration-track:892272ed7df9a6842e0e76ee03eb7f83524ef21573ed3d05c7b5c3edb04b78ac` |
| 35 | `instance` | [mulAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/mulaction.md) | 241 | `declaration-track:54d9e9968a0413668fbc0ca9e39d367b596ecc172954c6e3c171b98225f83007` |
| 36 | `instance` | [distribMulAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/distribmulaction.md) | 244 | `declaration-track:5739f1642a8809efa85b2e35abad7901712365478b35f05ef21ee0b2d79969c1` |
| 37 | `instance` | [module](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/module.md) | 248 | `declaration-track:1f4c29e4195f7e6092837e8722a35d77ca002a6405c376d08a1fba87964fbaff` |
| 38 | `theorem` | [fst_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/fst-zero.md) | 253 | `result-track:769c5d6ebcb1f028c2c7623061bc023c93550af91584cc36f281cb2be1a8ed86` |
| 39 | `theorem` | [snd_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/snd-zero.md) | 258 | `result-track:3bcee00ef241e99162cbf038a733fde58c9ce4897406f382410d71811eca3cda` |
| 40 | `theorem` | [fst_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/fst-add.md) | 263 | `result-track:b645ed645794149e09a2e3609acef15e721b11cfe3edcaea9c7e130310d11df9` |
| 41 | `theorem` | [snd_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/snd-add.md) | 268 | `result-track:204b0ad890559781e7b0e04f17fab7370c072b323d079122200444b539034fe9` |
| 42 | `theorem` | [fst_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/fst-neg.md) | 273 | `result-track:df511985e35e0d4ceb81a97743edd0b1605a4532ff133a5449c38627294f1714` |
| 43 | `theorem` | [snd_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/snd-neg.md) | 278 | `result-track:42fdcb22f899a27f57179cdbaa8904647a94fee40e0917b47a695d57f4a0ef4d` |
| 44 | `theorem` | [fst_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/fst-sub.md) | 283 | `result-track:52d96c3e6d8fce54a5d7fc2bbc0877fd69bb10eb067a8cdae10503183c6656b1` |
| 45 | `theorem` | [snd_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/snd-sub.md) | 288 | `result-track:6056bc9d90c606b484baafeded4471ec97eb3b844f8bfa6c8ebceba3a884f69a` |
| 46 | `theorem` | [fst_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/fst-smul.md) | 293 | `result-track:009b3dd8ee42ea6ae426eda8b457f83bc5ccf5afc92fbcb17e7ecbe985967dd3` |
| 47 | `theorem` | [snd_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/snd-smul.md) | 298 | `result-track:107a237fe18d817b6555fdc82d286f1b8ef0ad60a680a5630e1a3a106f8bfe44` |
| 48 | `theorem` | [fst_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/fst-sum.md) | 302 | `result-track:be5e67ea790d21eb752a6c671111e4666f4a61122b445e7f13cada69db1e0374` |
| 49 | `theorem` | [snd_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/snd-sum.md) | 307 | `result-track:e1f45c4afb4b663c71b96604a506aa5a7a6455033da0c2517db0cc70f502052a` |
| 50 | `theorem` | [inl_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/inl-zero.md) | 317 | `result-track:c15694e28c1e3a7ead3fed64a04b08c3cb38a7909f8f477dfd74262c1f15dece` |
| 51 | `theorem` | [inl_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/inl-add.md) | 322 | `result-track:0f57c80b950c9086e0c4215f9c6f81f5dfd893c3bdb7fcca5250185a32469199` |
| 52 | `theorem` | [inl_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/inl-neg.md) | 328 | `result-track:251d7f6d1348c58837ef25f36f19fdd281c0d10bf4648baf03fca97185d6dcba` |
| 53 | `theorem` | [inl_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/inl-sub.md) | 333 | `result-track:f9f65a458c71a467b3647a3d47795d5ecc11704fc2597f8e5fecc8095e792505` |
| 54 | `theorem` | [inl_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/inl-smul.md) | 339 | `result-track:1c873156e0b81bff01b03e0e5bb6abea0b221db857fa30bcc4b84c8bdf3439df` |
| 55 | `theorem` | [inl_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/inl-sum.md) | 344 | `result-track:db6a472ca6bb0397489837012621e179ae302156ddf3ee4e436451a8729b78ee` |
| 56 | `theorem` | [inr_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/inr-zero.md) | 356 | `result-track:55178808febb6200aaf0d61a64729b712e3db494a8e520bf461ae7216a92ddfa` |
| 57 | `theorem` | [inr_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/inr-add.md) | 361 | `result-track:74d6fc01ab2d02f428021930f067332f0407f30e279ef263bf1cf4d00df035b6` |
| 58 | `theorem` | [inr_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/inr-neg.md) | 367 | `result-track:5f01bb18cd44357835508851d4fb7ff9b2fe2ac44e1e9038fe2786ed493b459b` |
| 59 | `theorem` | [inr_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/inr-sub.md) | 372 | `result-track:60c8af57e242874e16adca57d97cd0e4e9e2b39d08e1a99e00254588a66b7f98` |
| 60 | `theorem` | [inr_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/inr-smul.md) | 378 | `result-track:423c9cf5a245e5abcba64e071f5251b73ae5eb16d7aa4abb75807940ec2d4945` |
| 61 | `theorem` | [inr_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/inr-sum.md) | 383 | `result-track:f2bb9d51348b26d6d3a7771ddc3ad27c490854a84276f646d4cba5036f06146d` |
| 62 | `theorem` | [inl_fst_add_inr_snd_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/inl-fst-add-inr-snd-eq.md) | 390 | `result-track:611e1a6020b9b115dd2714e3a03e17641afed6098f78bf1b066af9d1fce52f1e` |
| 63 | `theorem` | [ind](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/ind.md) | 399 | `result-track:b6ff0db49a03d21038b4d4d85c6e97c4e47f178323f99956822f2c322cd69941` |
| 64 | `theorem` | [linearMap_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/linearmap-ext.md) | 406 | `result-track:cce37b7258e53d21c42892f79c6f681cc98a14e0bf9de22d7185b95e3a2335e7` |
| 65 | `def` | [inrHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/inrhom.md) | 416 | `declaration-track:ba74b97b37a4b03f99cd500dfc0906453a4a57a049d42b809ea5b9bc5a21e69f` |
| 66 | `def` | [sndHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/sndhom.md) | 422 | `declaration-track:c494dfa36b98810da4f1954065b782a83938028af5d29503a4f3b74f99f55bad` |
| 67 | `instance` | [one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/one.md) | 435 | `declaration-track:5644084c606665f9a61a187a365796b3feb3344afdd4e0fac8bd7123c7778c30` |
| 68 | `instance` | [mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/mul.md) | 438 | `declaration-track:6c8959b17e23e1ce75b47c03afb2c8c4d52363fafef9993d4fa0a8085c39f914` |
| 69 | `theorem` | [fst_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/fst-one.md) | 442 | `result-track:d1a3eee1331de9e3ecbcf80f56ab31cbd6acaa6a9c09ca0d395ad8df580817c2` |
| 70 | `theorem` | [snd_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/snd-one.md) | 447 | `result-track:8f161a5d6c2edc340a54abdb6f1881094c456bc3829f38d777502ff3f7625281` |
| 71 | `theorem` | [fst_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/fst-mul.md) | 452 | `result-track:5a915b9e6c81144cf4c70574a3881c28112c35a0670a1de7c9952fd7879d8d4d` |
| 72 | `theorem` | [snd_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/snd-mul.md) | 458 | `result-track:43cac30cd87093c3a21e1814b8d1806976f8ae951715388d274e8cd591ab2f0c` |
| 73 | `theorem` | [inl_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/inl-one.md) | 468 | `result-track:bee802eddbb89a2926825247790ddbd3fd27243e7aa792bfe128e2ac4bbb537f` |
| 74 | `theorem` | [inl_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/inl-mul.md) | 473 | `result-track:9cbe9b17ac2f3745142443d7b6cf90fda393fb5d64132b491141145083b663de` |
| 75 | `theorem` | [inl_mul_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/inl-mul-inl.md) | 478 | `result-track:f396ed989cf602c398458d757476ee7fb23cb56dc4b72918f924111f11849496` |
| 76 | `theorem` | [inr_mul_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/inr-mul-inr.md) | 490 | `result-track:654546c2dec2d411ab56647d6e0fd21bc0a2ea5dbd54ef8b07406cde312e6559` |
| 77 | `theorem` | [inl_mul_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/inl-mul-inr.md) | 498 | `result-track:6a89cf9c19d19be4367b03f4db5e1ffbfa72560f159ef678cea00533aa93e8c5` |
| 78 | `theorem` | [inr_mul_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/inr-mul-inl.md) | 504 | `result-track:ecdffa7d11850721677309f1a58d538d4cafc165235d9d264abdd90fcda3e593` |
| 79 | `instance` | [mulOneClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/muloneclass.md) | 510 | `declaration-track:fd8234322c70118bae6df3f6673324a48579509c37d485279411c0582a9b5c39` |
| 80 | `instance` | [addMonoidWithOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/addmonoidwithone.md) | 520 | `declaration-track:653ee921f7a346380cbcb9a1b0c6ee52c92d96307a79d2f2de40ab867062d468` |
| 81 | `theorem` | [fst_nat_cast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/fst-nat-cast.md) | 527 | `result-track:ea77a43891cea99eeb51d6e0bde77febe3cce868b4da671e42b20a671085027b` |
| 82 | `theorem` | [snd_nat_cast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/snd-nat-cast.md) | 532 | `result-track:13d84684028da536f1ca6263697e1f760ada6e7651cfcdc0221f0dd46a9d9d27` |
| 83 | `theorem` | [inl_nat_cast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/inl-nat-cast.md) | 537 | `result-track:e36898620dea6c57927ff716c9d509111b9aec52a4f1b824c9888792e5219038` |
| 84 | `instance` | [addGroupWithOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/addgroupwithone.md) | 541 | `declaration-track:d8f576b63bc7969fd9b718fa966445d3b7c2a37586cec5a9140eef1f88a57566` |
| 85 | `theorem` | [fst_int_cast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/fst-int-cast.md) | 548 | `result-track:e051b6bb060f135cc520ded2bfe5f929548cdd07865a9cc0c9de2db3959cf30a` |
| 86 | `theorem` | [snd_int_cast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/snd-int-cast.md) | 553 | `result-track:20e98031e528c14d6b3752fee133f5f89f59fe2dffda16dcc168aa77661e24e9` |
| 87 | `theorem` | [inl_int_cast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/inl-int-cast.md) | 558 | `result-track:313ce613ce70c46e59522f9ea269750d47955e981269c6dbfe750706af7a1d8c` |
| 88 | `instance` | [nonAssocSemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/nonassocsemiring.md) | 562 | `declaration-track:45200f03ba8cf251f4c08d1de6e15661c76e76522d2b8e06c56a0c86804f52ba` |
| 89 | `instance` | [nonAssocRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/nonassocring.md) | 584 | `declaration-track:f4c7a7ab8f5441b3c2bece70037d5d83319b9fe61a2301327bfc459070d3fa1d` |
| 90 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/instance-source-edition-2.md) | 597 | `declaration-track:37a3c6375a8acc18d29b1dd2ff91f1d352c3284ae26ae83dcefd3e0563baf769` |
| 91 | `theorem` | [fst_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/fst-pow.md) | 603 | `result-track:a6c455c43c41f9d6aa65a8a1aa040709b62a4c78146bd416250d1094a3e72548` |
| 92 | `theorem` | [snd_pow_eq_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/snd-pow-eq-sum.md) | 608 | `result-track:982b4a56023dbe93f617ab366abc08352f802941d15b8ee81b9220688d6e64ff` |
| 93 | `theorem` | [snd_pow_of_smul_comm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/snd-pow-of-smul-comm.md) | 614 | `result-track:6c2b654c7638ab018a48ef6c8eb9a0014cbbd72ddd3f3f6902613626645d187f` |
| 94 | `theorem` | [snd_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/snd-pow.md) | 637 | `result-track:5c962b2f687012c7d2478617f480220fe83884bd8fa376226224990f068bba1d` |
| 95 | `theorem` | [inl_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/inl-pow.md) | 643 | `result-track:f04ccfba0eb11839174426860077bdf7fcdf8bff4b9345cd778732483cd9cbce` |
| 96 | `instance` | [monoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/monoid.md) | 648 | `declaration-track:fc4d4f6dfc761b3c017cf99f76fbf6adcf2d15247be36ff21489754d47e30cb5` |
| 97 | `theorem` | [fst_list_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/fst-list-prod.md) | 674 | `result-track:c80a75908a09f19ac928ce3e88146a95052b7f650a875e67dcbb9efb53a88f6c` |
| 98 | `instance` | [semiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/semiring.md) | 679 | `declaration-track:1eb17c90c4f6f3cffad67a7f173b26ab678058c861cef772a963a6aab51af435` |
| 99 | `theorem` | [snd_list_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/snd-list-prod.md) | 685 | `result-track:6b00e7475dcd1490007ac4561e095638260c428718985b4d79a151979175ca87` |
| 100 | `instance` | [ring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/ring.md) | 699 | `declaration-track:da8f4cb0ebb2c0e40717630be3d37298cd6154a3721a5d38c53ec81f77e95e18` |
| 101 | `instance` | [commMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/commmonoid.md) | 703 | `declaration-track:22db24581703a19bd271ea1b5af3caf0e8b6ae1bdd5da28a46b3dd6d42515f75` |
| 102 | `instance` | [commSemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/commsemiring.md) | 711 | `declaration-track:a3484478d976559026edb7cbd0380037e714657da06adb374be99b9f11f59d75` |
| 103 | `instance` | [commRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/commring.md) | 715 | `declaration-track:072a73fdb1714d522eca69b1704845308122bf5e021f1e52679b028f9c91fd7b` |
| 104 | `def` | [inlHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/inlhom.md) | 723 | `declaration-track:5f81c8d869e4fc67e4d81f5a555a7eb678ff9f76146ec50303ccf93fb5eca653` |
| 105 | `instance` | [algebra'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/algebra.md) | 747 | `declaration-track:4df9093c9342b2190b53253d0e45d9754d23a5d2e811103aec49a2b782344f12` |
| 106 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/instance.md) | 764 | `declaration-track:176c60d00f26f94b32d8c933f989a93945717ce9c5e3986e3e12e53eebbdcca1` |
| 107 | `theorem` | [algebraMap_eq_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/algebramap-eq-inl.md) | 767 | `result-track:89a0739cc7b5d1690152b3e80f6d8ba3ab163feadb476ebffcae6c5c53cc970c` |
| 108 | `theorem` | [algebraMap_eq_inlHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/algebramap-eq-inlhom.md) | 771 | `result-track:8123b2f5696393556f7eb6bd44fbd37e7069e3c3b6c96646513eb7f9e296c120` |
| 109 | `theorem` | [algebraMap_eq_inl'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/algebramap-eq-inl-source-edition-2.md) | 775 | `result-track:ea9f4f4ee51baac9f871ace73b02e2479c95f6519772f5d251ce7a3d24f22ca5` |
| 110 | `def` | [fstHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/fsthom.md) | 781 | `declaration-track:9b3b8f599077a68aa57022c591fa4331b5e1e1d67506909b135f3be8583a08a4` |
| 111 | `theorem` | [algHom_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/alghom-ext-source-edition-2.md) | 792 | `result-track:7c0300963a88ea3b446b7b09d52921e7dfe742f368e070f6a6c87f6a3ceb23dd` |
| 112 | `theorem` | [algHom_ext'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/alghom-ext.md) | 799 | `result-track:2c6060b16db68f082df8b8d29938007abfdf1909b69525a5d9d22e2ca39e9b7a` |
| 113 | `def` | [liftAux](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/liftaux.md) | 810 | `declaration-track:fcb4d8a20f22095b11271eed0042429580268aa6aaa4e6ff409c970ffedbf240` |
| 114 | `theorem` | [liftAux_apply_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/liftaux-apply-inr.md) | 824 | `result-track:e8e098ded463c90ece3af87520ed28790aa18bb397168d2e14d4fa2d1c0d7e05` |
| 115 | `theorem` | [liftAux_comp_inrHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/liftaux-comp-inrhom.md) | 830 | `result-track:3bd1de38788f10576c48177850d0b7ac88fa3a30bf2ee71077cee54a68c1f8bc` |
| 116 | `theorem` | [liftAux_inrHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/liftaux-inrhom.md) | 837 | `result-track:acd93c9c5bee17065490dd60149e29a596026b7579bda86fd5ed1a9955865dbe` |
| 117 | `def` | [lift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtNamespacedFstNatCast.lean/declarations/lift.md) | 847 | `declaration-track:4ff105811f738bd26237faf91459a26646db45575ec79b07a15facf485da77a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0cb5f5a9c8d241993d177aee2855285ccd78cfe296f2aaa128875a5ea7c2dc91 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/TrivSqZeroExt/Variant5dc6b52b4b0c4d29ff7c7dfe2baa3b110a897a8e850ff2f32afce4810197c30d.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/TrivSqZeroExt/Variant5dc6b52b4b0c4d29ff7c7dfe2baa3b110a897a8e850ff2f32afce4810197c30d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
