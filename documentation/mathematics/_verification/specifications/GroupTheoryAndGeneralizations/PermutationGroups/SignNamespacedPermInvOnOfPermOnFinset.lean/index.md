# Verification target: Sign Namespaced Perm Inv On Of Perm On Finset

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c096674d62f3cc92c25538e8b45a9a77f294cece",
  "lexical_observation_count": 67,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant2a83ba970423be247a7c61e8b9db0ddc00f90ee6fd180f07a80b17e42b106ca2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c096674d62f3cc92c25538e8b45a9a77f294cece`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant2a83ba970423be247a7c61e8b9db0ddc00f90ee6fd180f07a80b17e42b106ca2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant2a83ba970423be247a7c61e8b9db0ddc00f90ee6fd180f07a80b17e42b106ca2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Perm.Support` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OrderOfElement` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Fin` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Order.Units` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/example.md) | 42 | `declaration-track:5c4c360d766de1515da418033ed513cbd499daeb6c927bf5ff9e2ebe8f4527f3` |
| 2 | `def` | [modSwap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/modswap.md) | 52 | `declaration-track:c7814895c199368b4e15d33429b839dea8db25f5c1c88cd0d97b5c7d9545a841` |
| 3 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/instance.md) | 63 | `declaration-track:9172b82435da17910536eeb2c0ec6e94f3326e419057ca2b31b454650d20e237` |
| 4 | `theorem` | [perm_inv_on_of_perm_on_finset](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/perm-inv-on-of-perm-on-finset.md) | 67 | `result-track:12910efb571ddcd87e1b421a73fea75dd288941c81aee660e956b1ac684d3ba0` |
| 5 | `theorem` | [perm_inv_mapsTo_of_mapsTo](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/perm-inv-mapsto-of-mapsto.md) | 78 | `result-track:c7797e3bed4850829cc04899277e88295f6052b9d832a1acbb05d553985b96f7` |
| 6 | `theorem` | [perm_inv_mapsTo_iff_mapsTo](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/perm-inv-mapsto-iff-mapsto.md) | 89 | `result-track:ecf51ceea646fd3b3b31b82408a3011d5d1fcdb77d07fe068be5618ae4c90ca4` |
| 7 | `theorem` | [perm_inv_on_of_perm_on_finite](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/perm-inv-on-of-perm-on-finite.md) | 94 | `result-track:55dd820967b76f876d1663d55c8998293d602e69679d0ab0084ab536d8b612d7` |
| 8 | `abbrev` | [subtypePermOfFintype](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/subtypepermoffintype.md) | 105 | `declaration-track:3164505798faeacaf52d36ef994bc5ab8311e75d2a1e95cc0427e4647026273b` |
| 9 | `theorem` | [subtypePermOfFintype_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/subtypepermoffintype-apply.md) | 111 | `result-track:ca2f6e196a5b7aa5a2b31da7dc77771dfbaab6c8565b9a12d55fa4b0448d0d05` |
| 10 | `theorem` | [subtypePermOfFintype_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/subtypepermoffintype-one.md) | 116 | `result-track:9db8fff9a94b6e106ca675c022f5c18fbae0a89f7e3f825a9c018634913eb438` |
| 11 | `theorem` | [perm_mapsTo_inl_iff_mapsTo_inr](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/perm-mapsto-inl-iff-mapsto-inr.md) | 121 | `result-track:e7707fad67c031995a504a37a03bf4e2f4fa96d8336f7d30c5d7753d32ce8350` |
| 12 | `theorem` | [mem_sumCongrHom_range_of_perm_mapsTo_inl](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/mem-sumcongrhom-range-of-perm-mapsto-inl.md) | 144 | `result-track:78c3ddc957ec4520c0dfa1a46964c26cd10d651614ed0faf14be4ea995472038` |
| 13 | `theorem` | [Disjoint.orderOf](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/disjoint-orderof.md) | 178 | `result-track:9a61b307cae44062a8818e6bd3cf2ef13de4346a8fa9b8a97c4583b6b7c90f82` |
| 14 | `theorem` | [Disjoint.extendDomain](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/disjoint-extenddomain.md) | 188 | `result-track:50fd230f6b2ca95a67b8dcb12ff4bcfe3274c961e87f0903a7d75478bf6b0547` |
| 15 | `theorem` | [support_pow_coprime](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/support-pow-coprime.md) | 205 | `result-track:c13d902b7a45ca84d50ba02f5ac44c1137d2f8f11227a9fb27652ef56d10a48b` |
| 16 | `def` | [swapFactorsAux](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/swapfactorsaux.md) | 217 | `declaration-track:6491e3170372a50d0014f72218c2967386b419fec1e818f9751e68d9c5c60ea4` |
| 17 | `def` | [swapFactors](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/swapfactors.md) | 244 | `declaration-track:80891e7f46c0f5c67853e4a741e54f0d8fc6695fd67edf00136d57ceb8b3b2f5` |
| 18 | `def` | [truncSwapFactors](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/truncswapfactors.md) | 251 | `declaration-track:47641de4d1f71985a81baf9f13147751e8826180e723d21499b158d079055f64` |
| 19 | `theorem` | [swap_induction_on](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/swap-induction-on-source-edition-2.md) | 260 | `result-track:5cfc1e34d1220be89cc10522676c4dedc3c23252e1fa1faba5188b0a56d12164` |
| 20 | `theorem` | [closure_isSwap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/closure-isswap.md) | 274 | `result-track:273e00be0ca4295e35a3274ad32e17706915cf4ae0e5c9ef67e6c1bbeb498f5f` |
| 21 | `theorem` | [swap_induction_on'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/swap-induction-on.md) | 287 | `result-track:2022e1b0bbe21ab52b99b3a96dc4ba54996728cdc270b0c10ae278a81f2bf689` |
| 22 | `theorem` | [isConj_swap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/isconj-swap.md) | 292 | `result-track:4ff14a315712c93047694330b8290b8578390f96f792a137c1ba3b2f6ae769db` |
| 23 | `def` | [finPairsLT](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/finpairslt.md) | 308 | `declaration-track:f9dae4a231e8496dde371f850a17ec7d26f9adfbbe3dbfd9d60e48e690f35663` |
| 24 | `theorem` | [mem_finPairsLT](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/mem-finpairslt.md) | 312 | `result-track:dbf34c6cff2f16a31ba753307b8357bc14bebee2d550aff885c2c8ce5fac63ee` |
| 25 | `def` | [signAux](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/signaux.md) | 319 | `declaration-track:23751f7aa8b6f2a1f695cc85b80fe49cf7d6541016792fe496c0235c6607c931` |
| 26 | `theorem` | [signAux_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/signaux-one.md) | 324 | `result-track:ddc3ff833ee6e42e3bb47fbdce28464afc5b3e27e8fac09b04b69fa49e619bf5` |
| 27 | `def` | [signBijAux](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/signbijaux.md) | 331 | `declaration-track:5ce25fc235009c35861742aa270a14d38ce04a1e2b1226db4be69f1d44262eee` |
| 28 | `theorem` | [signBijAux_inj](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/signbijaux-inj.md) | 337 | `result-track:4bac7c3d82b3ea7af6d83ccc9acdd18757f5b53781b92531e81688a42252291d` |
| 29 | `theorem` | [signBijAux_surj](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/signbijaux-surj.md) | 350 | `result-track:bc8cc260dc1c480ffa3dbd6f8295edc90656044bc12ea8846dc9bd9b899d209b` |
| 30 | `theorem` | [signBijAux_mem](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/signbijaux-mem.md) | 366 | `result-track:b0bda84768ffb0c5748579c6cf19cd27bec600ed7a3aab5fa4758f321bdc1bea` |
| 31 | `theorem` | [signAux_inv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/signaux-inv.md) | 377 | `result-track:3db54432a496141ae47628c525a566f9a9dd4b9b9a7509cfad9d7d11daa19e02` |
| 32 | `theorem` | [signAux_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/signaux-mul.md) | 402 | `result-track:b0a1778517132d275f73985ee429571f996054c9368a08bd6f23c145923905d9` |
| 33 | `theorem` | [signAux_swap_zero_one'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/signaux-swap-zero-one.md) | 430 | `result-track:77d63448358fd24eb65de52f20332b475dc1ac4388202351b5c978c21168ee18` |
| 34 | `theorem` | [signAux_swap_zero_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/signaux-swap-zero-one-source-edition-2.md) | 454 | `result-track:8cdc6b18e05796284a2757a620eefe832ec9cb72b82cc7ff1dfb27caa9c94f63` |
| 35 | `theorem` | [signAux_swap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/signaux-swap.md) | 462 | `result-track:a3cc517201eabde2e5cc9134bdc6b6f92d5b2d69b5f8535c7bd780e02944a9d9` |
| 36 | `def` | [signAux2](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/signaux2.md) | 477 | `declaration-track:0312b0a99fa4ead52079f1efeee10f193825de3dca146979e90f2c41d2682232` |
| 37 | `theorem` | [signAux_eq_signAux2](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/signaux-eq-signaux2.md) | 482 | `result-track:79493db9c4a5e8b53941d0c5fe5aeb5160db0dd955bf609885cd892818a112d5` |
| 38 | `def` | [signAux3](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/signaux3.md) | 512 | `declaration-track:23f0ff8bb264d65098eab7bafd2b121f33a6a1961de29f5252749b48b5a39308` |
| 39 | `theorem` | [signAux3_mul_and_swap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/signaux3-mul-and-swap.md) | 520 | `result-track:f9440f8390b3b64cd2d980eb6bea2f8395ec2b17cf1a7276bd01d50d8fa24c5b` |
| 40 | `def` | [sign](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/sign.md) | 543 | `declaration-track:54e12b01184dcae73525f253dcc4b055d00c21f26d6c25038c770a88b8fdcde4` |
| 41 | `theorem` | [sign_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/sign-mul.md) | 552 | `result-track:92b2431ba66e8ba27db052768a25aaaaba0786e048c8d87eec1d83a17ae13b1b` |
| 42 | `theorem` | [sign_trans](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/sign-trans.md) | 557 | `result-track:292d23acb9ab2002f0ee77a42968da4a7a58da189e58f5988613cc14ade46750` |
| 43 | `theorem` | [sign_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/sign-one.md) | 562 | `result-track:d7b587f3e1a55bd99c99ebd449ea60d58745c2218b2869311f8311429b25e27d` |
| 44 | `theorem` | [sign_refl](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/sign-refl.md) | 567 | `result-track:f0c88d0d335a47a937202b9c71c41bf7a120dacefc0c2e5acabed0e89e7dafad` |
| 45 | `theorem` | [sign_inv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/sign-inv.md) | 572 | `result-track:8b7b73b0c9d16209ab761e9649ab79ce05e9459f441aa71606ad5ece79aeeb5a` |
| 46 | `theorem` | [sign_symm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/sign-symm.md) | 577 | `result-track:a169b8d62ae3171355f68ab6245756c8e96585c60f5d68536633ca1761ba6479` |
| 47 | `theorem` | [sign_swap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/sign-swap-source-edition-2.md) | 581 | `result-track:d9b81c636b354490ed144708468c571659a4828d59f1887eb772c32b1edf748f` |
| 48 | `theorem` | [sign_swap'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/sign-swap.md) | 586 | `result-track:cfa4b2cc8e53210e5b07644cedaf8de550c4143d3fefc3c0d1cbb7d9558782a6` |
| 49 | `theorem` | [IsSwap.sign_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/isswap-sign-eq.md) | 590 | `result-track:fec2e479e439ad792e27f43875036cfa71233f52075c372a8640a017f96c807e` |
| 50 | `theorem` | [signAux3_symm_trans_trans](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/signaux3-symm-trans-trans.md) | 595 | `result-track:5d0770b8bc3e47e87ef79dd4311ecf057f1a982bc9e9cac6f5b20c8989a1172c` |
| 51 | `theorem` | [sign_symm_trans_trans](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/sign-symm-trans-trans.md) | 609 | `result-track:00e05555f670e8d87241fbb6e0b0015eff31ae752a795190ea686d27067565d4` |
| 52 | `theorem` | [sign_trans_trans_symm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/sign-trans-trans-symm.md) | 615 | `result-track:cb09de5b353533b2ed102c30d4580ca223e656a499ab499484afaecc91cb454c` |
| 53 | `theorem` | [sign_prod_list_swap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/sign-prod-list-swap.md) | 620 | `result-track:b3b411adebf4ccb6f18676e6a50b5671ad33f08012d1306577de2d42e9661f3f` |
| 54 | `theorem` | [sign_surjective](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/sign-surjective.md) | 632 | `result-track:bcb5ed94b8c2714658a5e65f0dd82b3c6d87ab4ca61ebda77c2565967a2848f5` |
| 55 | `theorem` | [eq_sign_of_surjective_hom](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/eq-sign-of-surjective-hom.md) | 640 | `result-track:a80501c25cac26ee61db30b0cbace6216ffeb90b1ce93b6aeccc571c9b8d070f` |
| 56 | `theorem` | [sign_subtypePerm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/sign-subtypeperm.md) | 665 | `result-track:64e897f82fbd03942fad56dba7b7112849a8fe47d2cb8177f2aa8b1bd5877b34` |
| 57 | `theorem` | [sign_eq_sign_of_equiv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/sign-eq-sign-of-equiv.md) | 681 | `result-track:7ad8c5381ac5977502433d3cb9228fd43fbddc8b75337f9f414a771f7d91575b` |
| 58 | `theorem` | [sign_bij](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/sign-bij.md) | 687 | `result-track:d5259bbff48885e566c079bc0958c3e855540dbf49b3fdf2fac4278d70507ce1` |
| 59 | `theorem` | [prod_prodExtendRight](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/prod-prodextendright.md) | 711 | `result-track:5b631ff1383ec006fb17de19ccf329d031e9ab25d252077eaeda7d7508c4e27d` |
| 60 | `theorem` | [sign_prodExtendRight](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/sign-prodextendright.md) | 743 | `result-track:a26871898857cb3783aad2848936e127a55c019877d7af189e0b3c0a568d68f6` |
| 61 | `theorem` | [sign_prodCongrRight](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/sign-prodcongrright.md) | 751 | `result-track:0a0c8b2aad83de58bd42ac889472e79a9cc525e23cb51c32e588ea44597119d5` |
| 62 | `theorem` | [sign_prodCongrLeft](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/sign-prodcongrleft.md) | 762 | `result-track:774d38aeaaa9e581ebe9fc06de20ff184ec74bac607e24c08f2d46c276925db5` |
| 63 | `theorem` | [sign_permCongr](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/sign-permcongr.md) | 769 | `result-track:92cce0631f17e1c027b07531dcad0910c61058cdf56eda7883008e9788828408` |
| 64 | `theorem` | [sign_sumCongr](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/sign-sumcongr.md) | 774 | `result-track:e91bf76bb5fe6334905476fdd289f9d18d39b4288e019bd0da140816d646d19f` |
| 65 | `theorem` | [sign_subtypeCongr](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/sign-subtypecongr.md) | 789 | `result-track:8f1333e037fc0f5d5520c561ba39c2f64104a3e5766d4f02ededabc768f55eac` |
| 66 | `theorem` | [sign_extendDomain](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/sign-extenddomain.md) | 795 | `result-track:7dbddf38672642c8d3ef6c66acd0f8542b57d16302ba61cf0b2169fcc75734b0` |
| 67 | `theorem` | [sign_ofSubtype](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SignNamespacedPermInvOnOfPermOnFinset.lean/declarations/sign-ofsubtype.md) | 801 | `result-track:8c0b3c58064798bf1967bb94f6e798c18128a259cc24f2c4834f7abd93a5358d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cd9f319c72a8d7adbf8f040255ec3a88613fcf5465a11dfabc14eec25aba108e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant2a83ba970423be247a7c61e8b9db0ddc00f90ee6fd180f07a80b17e42b106ca2.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant2a83ba970423be247a7c61e8b9db0ddc00f90ee6fd180f07a80b17e42b106ca2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
