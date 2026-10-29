# Verification target: Complement Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68f549877fc24502971a74cf128f2b3ca3d29225",
  "lexical_observation_count": 86,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Complement/Variantc20d031d7af05ca411468da28ea5f0cf45179efcc8bc86f18031cc8817a38c3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68f549877fc24502971a74cf128f2b3ca3d29225`.

Source path: `GRWTSK/Topology/GeneralTopology/Complement/Variantc20d031d7af05ca411468da28ea5f0cf45179efcc8bc86f18031cc8817a38c3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Complement/Variantc20d031d7af05ca411468da28ea5f0cf45179efcc8bc86f18031cc8817a38c3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsTopCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/istopcompl.md) | 90 | `declaration-track:9a9420852d1e222b9fd6d2f64927a6b7aac2cb56295e54002760da95f4bd52c5` |
| 2 | `def` | [ClosedComplemented](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/closedcomplemented.md) | 95 | `declaration-track:1730932c6027bc6d9aba68e8277fd04c91202d1a1714f2cff27b6983dcc1dbca` |
| 3 | `theorem` | [IsCompl.isTopCompl_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/iscompl-istopcompl-iff.md) | 102 | `result-track:01480247a10262abb236f60d9d89480bfd4e089db7220b1d49070329b381c660` |
| 4 | `theorem` | [IsCompl.isTopCompl_iff_projectionOnto](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/iscompl-istopcompl-iff-projectiononto.md) | 106 | `result-track:8d0b9184cf17384c19055e5ddb0b0b18b36180008b5a19fffdaab179cb0bea7b` |
| 5 | `theorem` | [IsTopCompl.continuous_projectionOnto](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/istopcompl-continuous-projectiononto.md) | 114 | `result-track:1dc364d5bfadd80f6c8efb9fdc072a50ff8df3a9eda6713422b6fdc1a820d971` |
| 6 | `theorem` | [IsTopCompl.symm](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/istopcompl-symm.md) | 121 | `result-track:3f24964547918630565817d37750bcd357a0fb6df3661b0c8f72bec5af29a073` |
| 7 | `theorem` | [isTopCompl_comm](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/istopcompl-comm.md) | 127 | `result-track:1157d46817ccfac69ffe08776aabddf3b4e67211ccc4fa6f1952239d8ac88f55` |
| 8 | `theorem` | [Complement Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/istopcompl-source-line-131-occurrence-2.md) | 131 | `result-track:64f2d9f7e0e5053b6f2fca81f563ab858bc0949aede9f1990c8699a97ebc119e` |
| 9 | `theorem` | [isTopCompl_bot_top](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/istopcompl-bot-top.md) | 136 | `result-track:6008e003a2a04b2b602155107a38b71506fc4b59ef9f5d7023336416c67bc162` |
| 10 | `theorem` | [isTopCompl_top_bot](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/istopcompl-top-bot.md) | 141 | `result-track:3cec53e7bf30338927583d605b0c84db78f32530b2a65a9ca9c4f239ab974360` |
| 11 | `theorem` | [Complement Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/istopcompl-range-ker-of-leftinverse.md) | 147 | `result-track:2b56bb41b169063f3d7de1f259e6fde9cba4068fb2636663052b701c13a3ffbf` |
| 12 | `theorem` | [Complement Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/istopcompl-of-proj.md) | 158 | `result-track:ef81761cdc10b3162685abbdfb51465aedefbd38d3d8ad95a66097a15ee26382` |
| 13 | `def` | [projectionOntoL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/projectionontol.md) | 169 | `declaration-track:4d1d20058f97c0e634363d28e6d8ffc0cc588ab2f81296094f2242d5b1c20054` |
| 14 | `theorem` | [toLinearMap_projectionOntoL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/tolinearmap-projectionontol.md) | 173 | `result-track:4380bd812298aaf1e9883442d8f0af03d5d3598de71076454952a5ca0c7174c3` |
| 15 | `theorem` | [projectionOntoL_apply_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/projectionontol-apply-left.md) | 178 | `result-track:d1df40c9ae9295263bedf2c87aedc5f20ea6fbae772db9227b5efa073ae4d9eb` |
| 16 | `theorem` | [coe_projectionOntoL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/coe-projectionontol.md) | 183 | `result-track:0f2c12b71df9bc9788149d7bee4bee16b01f576a9433bcb2cd8d8790cbb9a7bb` |
| 17 | `theorem` | [range_projectionOntoL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/range-projectionontol.md) | 187 | `result-track:f570300193ea04b62578ecdbca970e447dd19f073fd18752c2aa183a7410ab83` |
| 18 | `theorem` | [projectionOntoL_surjective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/projectionontol-surjective.md) | 190 | `result-track:c8962a1a9d96c402a223791d916e87814f33ee97132ba955fa8e3169660d9a7a` |
| 19 | `theorem` | [projectionOntoL_apply_eq_zero_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/projectionontol-apply-eq-zero-iff.md) | 193 | `result-track:0dc56357c608f01db4068d5df13b257cc0327ccbfdc76724518000f2d9a09a28` |
| 20 | `theorem` | [projectionOntoL_apply_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/projectionontol-apply-right.md) | 200 | `result-track:e1d503e8e6e8227648aa76f654f25c6ae7a612bd5338c8da3b8cd67ef0b0a7e9` |
| 21 | `theorem` | [ker_projectionOntoL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/ker-projectionontol.md) | 204 | `result-track:a8e83ae18096941a8678deae2b983ae88f2f6be85b84c6661bb92b5ed953ee86` |
| 22 | `theorem` | [isQuotientMap_projectionOnto](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/isquotientmap-projectiononto.md) | 208 | `result-track:a0ad40a46251281a42dbba5189ff024f9d660b535f9927ce75ba219302b08178` |
| 23 | `theorem` | [isQuotientMap_projectionOntoL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/isquotientmap-projectionontol.md) | 213 | `result-track:556cce08031253289c366dfc17024580deac499a0e587b7cf03848c45d486e0f` |
| 24 | `def` | [projectionL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/projectionl.md) | 227 | `declaration-track:fa327bcfde4f7d5c6e2f76476c74c3cafd2a95a32dcd11741d946d769465dd18` |
| 25 | `theorem` | [coe_projectionL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/coe-projectionl.md) | 231 | `result-track:868e28302f3c440ac1a49452b8a1be6a7c61980d60704907a72b049d0f7ac71f` |
| 26 | `theorem` | [toLinearMap_projectionL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/tolinearmap-projectionl.md) | 236 | `result-track:4cfcab5395ba9e3616d7b8513f6e92bae6b9fae91ca77ff04018ea53a506a42f` |
| 27 | `theorem` | [projectionL_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/projectionl-apply.md) | 240 | `result-track:22b1e60a76b10f1ac4fda32d0675cf16e6db6b1a31602ef43685c069fdb7892c` |
| 28 | `theorem` | [coe_projectionOntoL_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/coe-projectionontol-apply.md) | 245 | `result-track:5669ef4d7d09433681b82b178939f43ce5269f1956f31a30a60837bbfa97b82f` |
| 29 | `theorem` | [projectionL_apply_mem](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/projectionl-apply-mem.md) | 249 | `result-track:32241d9b24fcfa445ce8f90c843f905a43800d09e2370dd860696d2380308017` |
| 30 | `theorem` | [projectionL_apply_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/projectionl-apply-left.md) | 253 | `result-track:769bff147e0c656ef02f5e8bbc6226ee7d0015500344d9cee0bdab7d18d6a64d` |
| 31 | `theorem` | [range_projectionL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/range-projectionl.md) | 257 | `result-track:4d8846d109c679101740f461e3e39edc0c4b58bf83987b84e0d16e2ac5c96964` |
| 32 | `theorem` | [projectionL_apply_eq_zero_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/projectionl-apply-eq-zero-iff.md) | 261 | `result-track:985aafcbc096008839dd693636f5ce5e52a348fa1a02286fa4385e4daa60cd2c` |
| 33 | `theorem` | [projectionL_apply_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/projectionl-apply-right.md) | 268 | `result-track:156ec0e540a0fe457c74797c6897a051a52d15c1112857c1a6556558257cee99` |
| 34 | `theorem` | [ker_projectionL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/ker-projectionl.md) | 272 | `result-track:a9b21840d3f094ac58a3dd0821626e98e33ce440ec491036c6ebb0ef7ac2c49c` |
| 35 | `theorem` | [isIdempotentElem_projectionL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/isidempotentelem-projectionl.md) | 277 | `result-track:91c964ea41ac37675a490c36c4f6dd382b4c8f01937a989e407e1461dc559e0a` |
| 36 | `theorem` | [projectionL_add_projectionL_eq_self](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/projectionl-add-projectionl-eq-self.md) | 281 | `result-track:8589cd80eaeb1682b88aa8f294195e7a0f22cfdbf74dfe90510d7146ccaa452d` |
| 37 | `theorem` | [projectionL_add_projectionL_eq_id](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/projectionl-add-projectionl-eq-id.md) | 286 | `result-track:af27ba4b5a227ef466e02741a6d78ee1e9ed189b891723641f7daa8b0526e9dc` |
| 38 | `lemma` | [projectionL_eq_self_sub_projectionL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/projectionl-eq-self-sub-projectionl.md) | 290 | `result-track:1d38285bb62cd4415e3701ed6e90c7477e25c82e4ca6041391d1ad2c285138fc` |
| 39 | `lemma` | [projectionL_eq_id_sub_projectionL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/projectionl-eq-id-sub-projectionl.md) | 294 | `result-track:415168ec20fde98669b17e4a9d281e81bfae4a3e55afd1a75da3c1c969f5e94c` |
| 40 | `lemma` | [projectionL_eq_self_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/projectionl-eq-self-iff.md) | 299 | `result-track:bac07b3f43fe352f24d8e529cad8751f61a0113a147a3c29f0ca2726a03e750f` |
| 41 | `theorem` | [Complement Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/eq-projectionl.md) | 303 | `result-track:88db63424497e7ee097f9afc1417f2ac12722240d5cd242c5f971c36de86c3e2` |
| 42 | `theorem` | [Complement Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/isidempotentelem-iff-eq-projectionl-range-ker.md) | 307 | `result-track:dd55300f34a896c3487953fb6a180c8ae067417d1ed231ac7beb7e5b136789d5` |
| 43 | `theorem` | [IsTopCompl.closedComplemented](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/istopcompl-closedcomplemented.md) | 316 | `result-track:680f6a97f17b33fc7e34c193fa29171321eb9f759323dd51e18a5d5af1ad0a5d` |
| 44 | `theorem` | [IsTopCompl.isClosed'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/istopcompl-isclosed.md) | 321 | `result-track:8e5f5b4c95d3aabe7fb65556e5bb6d10f5f930504ca9ed421a2b8272bce89428` |
| 45 | `theorem` | [IsTopCompl.isClosed](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/istopcompl-isclosed-source-edition-2.md) | 326 | `result-track:94a5dec2f664bc0a652e7cd265929b21b7333a0562c085f58d00df8e8dd20b30` |
| 46 | `theorem` | [IsTopCompl.t3Space](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/istopcompl-t3space.md) | 330 | `result-track:2b8784b40a9b039fe2aa9e8a06ff67311a73593500c16d33720ff9ef597452e4` |
| 47 | `theorem` | [IsTopCompl.t2Space](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/istopcompl-t2space.md) | 340 | `result-track:c4552d1254372b7824fb73ad9b8197e9aa2b23c825a8edfab3165ee4e1727b47` |
| 48 | `theorem` | [ClosedComplemented.exists_isTopCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/closedcomplemented-exists-istopcompl.md) | 351 | `result-track:7148954f4ef2f055c169ca26e23156d050041f99db66b5a1cd54d71df9772c68` |
| 49 | `theorem` | [closedComplemented_iff_exists_isTopCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/closedcomplemented-iff-exists-istopcompl.md) | 355 | `result-track:1686ae754f43ab60598e475e96366a4a9b0fa07ca08f7cb06535c4893d8a6158` |
| 50 | `theorem` | [ClosedComplemented.exists_isClosed_isCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/closedcomplemented-exists-isclosed-iscompl.md) | 359 | `result-track:91746148774d9fe25120f3115956bfd5039131804a8aef41b530c9e347d2a611` |
| 51 | `def` | [ClosedComplemented.complement](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/closedcomplemented-complement.md) | 364 | `declaration-track:33d1a75e7fdb9fa6b6b357096d7545e4e8335dddb0dea3deb1b91b2270bc4fa1` |
| 52 | `theorem` | [ClosedComplemented.isTopCompl_complement](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/closedcomplemented-istopcompl-complement.md) | 367 | `result-track:92d174bd93bd976f8d8397efbd8861b16216ca209a274b17fb75eccd36f31076` |
| 53 | `theorem` | [ClosedComplemented.isCompl_complement](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/closedcomplemented-iscompl-complement.md) | 371 | `result-track:d647efd7df17a95e7bc5efc60b31a50141c5818468179789d211aaff36bc44ab` |
| 54 | `theorem` | [ClosedComplemented.isClosed_complement](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/closedcomplemented-isclosed-complement.md) | 374 | `result-track:f9036937764f6a8684ca0613eb67e1f1ec863c83386efe4ee4729f515a45555b` |
| 55 | `theorem` | [ClosedComplemented.isClosed](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/closedcomplemented-isclosed.md) | 378 | `result-track:52988425e8b3e6615774dce4f0470d682a707dad180614f95984663ce7ed6bae` |
| 56 | `theorem` | [closedComplemented_bot](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/closedcomplemented-bot.md) | 383 | `result-track:1012056add72d0d79e3953896d5aab45e2378df90eac460dd411936503d3877a` |
| 57 | `theorem` | [closedComplemented_top](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/closedcomplemented-top.md) | 387 | `result-track:a766f96cffafd4116dc9ed6149ef9a15afc4afe55c3ae628bfb4ed411c48dff4` |
| 58 | `theorem` | [Complement Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/closedcomplemented-range-of-leftinverse.md) | 390 | `result-track:acbb899537781998e0e40cd9e9190a2c963ed1a6e19b6400a57dc33a0140a444` |
| 59 | `theorem` | [Complement Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/closedcomplemented-ker-of-rightinverse.md) | 395 | `result-track:8f308e2cf0a713ac12c977a1ecc837c14e94c071392e7c02bae3bf5e2ebc35bb` |
| 60 | `lemma` | [ClosedComplemented.exists_submodule_equiv_prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/closedcomplemented-exists-submodule-equiv-prod.md) | 407 | `result-track:f5a207380a1e5958ad40819dae140ed0d39a2a0c0c7aab3a0924f834bf5ee63a` |
| 61 | `theorem` | [IsCompl.isTopCompl_iff_continuous_symm_prodEquivOfIsCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/iscompl-istopcompl-iff-continuous-symm-prodequivofiscompl.md) | 423 | `result-track:ebba4dd148fe9684738899810a1c6921181459c5617e15d9097bf56ca7fd31bf` |
| 62 | `theorem` | [continuous_prodEquivOfIsCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/continuous-prodequivofiscompl.md) | 431 | `result-track:e33589b45095e20792ad6f9b7353566ba67771f6c03cd6e4dbefb1fd2653902d` |
| 63 | `theorem` | [IsCompl.isTopCompl_iff_isHomeomorph_prodEquivOfIsCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/iscompl-istopcompl-iff-ishomeomorph-prodequivofiscompl.md) | 436 | `result-track:9351007e03e5e81c5b018fa91a24f1b3e047326885d13f5dab8d14f450206a85` |
| 64 | `def` | [prodEquivOfIsTopCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/prodequivofistopcompl.md) | 445 | `declaration-track:acdfd9ac39c8cffae0baf68e132f698ff592b4f005e784a056636529c3a09ae4` |
| 65 | `theorem` | [toLinearEquiv_prodEquivOfIsTopCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/tolinearequiv-prodequivofistopcompl.md) | 451 | `result-track:899393c789ae15405170b896bf1048e49276a6c1dc95233a1a1fb9abcbad275e` |
| 66 | `theorem` | [coe_prodEquivOfIsTopCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/coe-prodequivofistopcompl.md) | 456 | `result-track:3d46975e63abe7e78be10128442f7f29315aa72f6977dfd0048c1b32fd387af8` |
| 67 | `theorem` | [coe_symm_prodEquivOfIsTopCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/coe-symm-prodequivofistopcompl.md) | 461 | `result-track:88124b235b0716a41a8e5a24b8be7f26a7979104eba18208421f28537c4dd913` |
| 68 | `theorem` | [prodEquivOfIsTopCompl_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/prodequivofistopcompl-apply.md) | 465 | `result-track:d0da547530abeeb0d75c84be86241de5776ab0fbee7c0e30f4c8ab599c6745ca` |
| 69 | `theorem` | [prodEquivOfIsTopCompl_symm_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/prodequivofistopcompl-symm-apply.md) | 469 | `result-track:02f6e0520ba52aa05a0984cfe9e332f782301176828b42bbc5cebf00ceb0e7c6` |
| 70 | `theorem` | [IsCompl.isTopCompl_iff_continuous_quotientEquivOfIsCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/iscompl-istopcompl-iff-continuous-quotientequivofiscompl.md) | 476 | `result-track:29642ac83176c147c62e138dc38e33e280199a46fe917b103a50233b77271b07` |
| 71 | `def` | [quotientEquivOfIsTopCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/quotientequivofistopcompl.md) | 485 | `declaration-track:7510a5e1b47d7ea5beb406c294364d93fbf84b318babf7f56513f9ac4348d95c` |
| 72 | `theorem` | [toLinearEquiv_quotientEquivOfIsTopCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/tolinearequiv-quotientequivofistopcompl.md) | 491 | `result-track:5f9ec642e8921999be04f14c6b0ac703cd29a8c1b40e3ebb24103b6efd5155f9` |
| 73 | `theorem` | [quotientEquivOfIsTopCompl_comp_mkQL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/quotientequivofistopcompl-comp-mkql.md) | 495 | `result-track:5a54311fdf574b644f0557798fde1aab33241a597a7b3ecde4e02facfe58de38` |
| 74 | `theorem` | [quotientEquivOfIsTopCompl_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/quotientequivofistopcompl-apply.md) | 500 | `result-track:92e7c11f184016d0d59bb08d4d61ef4f7cec053347d0410291e90850dcd1b4d8` |
| 75 | `theorem` | [quotientEquivOfIsTopCompl_symm_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/quotientequivofistopcompl-symm-apply.md) | 505 | `result-track:1f2ce4829fa5701ffb585536a27b2b320db34f58227550a79d01f8fbca240fe2` |
| 76 | `theorem` | [quotientEquivOfIsTopCompl_apply_mk](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/quotientequivofistopcompl-apply-mk.md) | 509 | `result-track:59a0ae704bac37feba86f7c6306be442b5ccdb6eaebe3d0ea4bb8c7774a1675b` |
| 77 | `def` | [ofIsTopCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/ofistopcompl.md) | 529 | `declaration-track:72f8ef80ff9e4ed518deafa076a258fe52b37afe4b84b47dec7bb943d607c905` |
| 78 | `theorem` | [ofIsTopCompl_eq_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/ofistopcompl-eq-add.md) | 532 | `result-track:b3401514cc403bf9e2fa4a9fa12a6f7b65963730fc1739af0a9afe317d020ab8` |
| 79 | `theorem` | [toLinearMap_ofIsTopCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/tolinearmap-ofistopcompl.md) | 537 | `result-track:8115806f8b4ff08a899b697f7d2a3240e0a9732e716f2bbb7bd09179810bf94e` |
| 80 | `theorem` | [ofIsTopCompl_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/ofistopcompl-apply.md) | 542 | `result-track:630a9cbedb1f0d5257efcb30a35b0cfba96c6bd05289e7900cf598920b8dcdd6` |
| 81 | `theorem` | [ofIsTopCompl_apply_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/ofistopcompl-apply-left.md) | 546 | `result-track:056b06680ed685a69df77cd4636a3413dee13a9848a414872162631be096a9cb` |
| 82 | `theorem` | [ofIsTopCompl_apply_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/ofistopcompl-apply-right.md) | 549 | `result-track:52c2280135ff0cd88b68c0d187e7ec4ece62f77cb77da57ec90fab525a1076e3` |
| 83 | `theorem` | [ofIsTopCompl_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/ofistopcompl-eq.md) | 552 | `result-track:fd88daad82e3495e2eef627da630a648967d4dbb723d16c875c9a72dba5f6b48` |
| 84 | `theorem` | [ofIsTopCompl_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/ofistopcompl-zero.md) | 557 | `result-track:906b15ef1933ebf951b909521899f176b316e8c473cce213f19a3a1d96cb7224` |
| 85 | `theorem` | [ofIsTopCompl_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/ofistopcompl-add.md) | 561 | `result-track:7a557220dc1a08e2357f617d439bb41e10b4f3b0eed714e1a3f5983edd6376b1` |
| 86 | `theorem` | [range_ofIsTopCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementNamespacedPublic.lean/declarations/range-ofistopcompl.md) | 565 | `result-track:2a1547724aeb98d9697443913d10c02dd634dcd401719403d4de6efad502ce2d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c8ae0c5a41ac23c85b407e48b7beb2c57c0282c8c481b4a5a0a0ea0fca297b8e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Complement/Variantc20d031d7af05ca411468da28ea5f0cf45179efcc8bc86f18031cc8817a38c3e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Complement/Variantc20d031d7af05ca411468da28ea5f0cf45179efcc8bc86f18031cc8817a38c3e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
