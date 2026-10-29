# Verification target: Representation Theory Rep Rep Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2db92f77ea09edd6e4438541676df69d32b5882c",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Rep/Variantb2c38cd35a1f31795f15d81d88165beaf3eb1edc01a5ef32f719481827e4c068.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2db92f77ea09edd6e4438541676df69d32b5882c`.

Source path: `GRWTSK/Algebra/GroupTheory/Rep/Variantb2c38cd35a1f31795f15d81d88165beaf3eb1edc01a5ef32f719481827e4c068.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Rep/Variantb2c38cd35a1f31795f15d81d88165beaf3eb1edc01a5ef32f719481827e4c068.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RepresentationTheory.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RepresentationTheory.Action` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Abelian` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Colimits` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Monoidal.Closed` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Adjunctions` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Rep](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/rep.md) | 37 | `declaration-track:dd112db0733020c92ca6e101a7c661915a2c1e461a3c898f2d2afa140ef4b782` |
| 2 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/instance.md) | 42 | `declaration-track:2cf2e557e458a47978792369bba1262ad1a0c4f20d2a8360d10aadef0d297379` |
| 3 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/instance-source-edition-3.md) | 52 | `declaration-track:5c8b8699b68acfb5f1523addc251ce36100b367916565c90b0eeb86655044e02` |
| 4 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/instance-source-edition-5.md) | 55 | `declaration-track:8c1372bbb7a19576e8918391b0429eb2a9e2ec80d1f47b2da1772c60947a8b76` |
| 5 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/instance-source-edition-6.md) | 58 | `declaration-track:91f4d55fc7d6ce5cb3e52d77a20c58e286937153733c289c87c0bdb140ab0103` |
| 6 | `def` | [ρ](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/anonymous.md) | 64 | `declaration-track:bbca090826194e9ef7356c223ea6a1cbb6bb9f9f4851f3f0afbaa4855cfc3886` |
| 7 | `def` | [of](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/of-source-edition-2.md) | 71 | `declaration-track:c18dd63e8795476b3bd009a9c4494e160122d6d0768b9357bbac0c28b8227b49` |
| 8 | `theorem` | [coe_of](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/coe-of.md) | 77 | `result-track:457271a5cc104e7b1a7a8d01448a764482b224324d816454a05db8fa3b50e939` |
| 9 | `theorem` | [of_ρ](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/of.md) | 84 | `result-track:be5871f8e39f84120fe296fb33eac17872f84c51bda15b002401e3ee099b5537` |
| 10 | `theorem` | [Action_ρ_eq_ρ](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/action-eq.md) | 89 | `result-track:ffe30f15c03ef5a18a94a5666a8e1c00aff53aa69c1cb0c8a8c9eec0f429486d` |
| 11 | `theorem` | [of_ρ_apply](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/of-apply.md) | 96 | `result-track:0cf6e12f6cd8ad097cc1b052e74a84c43c6ecdfa2a7fe2b6ef5ff4c02cb89224` |
| 12 | `theorem` | [ρ_inv_self_apply](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/inv-self-apply.md) | 103 | `result-track:adbb4d20521678099b31484dd3035c9226d088970a939ffc39b87bc4d8b40343` |
| 13 | `theorem` | [ρ_self_inv_apply](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/self-inv-apply.md) | 110 | `result-track:f295535f8887d9f22ef3321fbe3c76c09f20e0f8dc800cdab7ac9da87230d347` |
| 14 | `theorem` | [hom_comm_apply](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/hom-comm-apply.md) | 116 | `result-track:df33c921a19e5cf2739b1395b31436d4886ebf30aef69805b341cbac9399b6be` |
| 15 | `def` | [trivial](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/trivial.md) | 125 | `declaration-track:36a454321702bb47d8be1b77e4edc9f0f056bbb69471f1c1772c29aec338f27a` |
| 16 | `theorem` | [trivial_def](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/trivial-def.md) | 132 | `result-track:e64fc99deec1f5b1231675bf356f3683f5f1e23c0e20086a5805c7af2f87d5ce` |
| 17 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/instance-source-edition-2.md) | 139 | `declaration-track:31dec72fa7bf17f00e078d84f118134c0d90f43725f46c01577acbaae9842f77` |
| 18 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/instance-source-edition-4.md) | 142 | `declaration-track:781d65e3a4046dc2843aed2c584ec6be9011a340dfacb9137cc9b42346d5989a` |
| 19 | `theorem` | [MonoidalCategory.braiding_hom_apply](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/monoidalcategory-braiding-hom-apply.md) | 147 | `result-track:f5d0206d94574b36cf28da7a753964c2577bd227db74c6a3b282ca88732fc3a6` |
| 20 | `theorem` | [MonoidalCategory.braiding_inv_apply](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/monoidalcategory-braiding-inv-apply.md) | 155 | `result-track:e47a4fb1406b647b8cc4be06f719181abfad5702f970d5b4a05df4131b60721f` |
| 21 | `def` | [linearization](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/linearization.md) | 167 | `declaration-track:25962e6098eecfbc93a3cfd93efb3dfbc28513096ed1bfde0f7a546ad4b19025` |
| 22 | `theorem` | [linearization_obj_ρ](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/linearization-obj.md) | 175 | `result-track:cc3369a6acfc09954159d86ca7491da207364b89e20bc5b2e11a496af866551a` |
| 23 | `theorem` | [linearization_of](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/linearization-of.md) | 181 | `result-track:389be8173b3380b98ae77a86ab24379366451346dc070acd979335d70eeb2946` |
| 24 | `theorem` | [linearization_single](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/linearization-single.md) | 189 | `result-track:b22699843ca900526daba00349ea6b9a5a343fbf145acbdfb6a6314d6744ac07` |
| 25 | `theorem` | [linearization_map_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/linearization-map-hom.md) | 196 | `result-track:ab3cce7c16352e61d8878706347cf2037a185de2a76554c1304982b3a94230da` |
| 26 | `theorem` | [linearization_map_hom_single](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/linearization-map-hom-single.md) | 201 | `result-track:63d23cf4a9fec671575a62a28a6e8da1b5a5a212933590adb98d7289d8d8fb83` |
| 27 | `theorem` | [linearization_μ_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/linearization-hom-source-edition-2.md) | 208 | `result-track:56d42afe792440d24f12d172ffad895aab97a7c0bda1268c3da7126b2f40d4ad` |
| 28 | `theorem` | [linearization_μ_inv_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/linearization-inv-hom.md) | 215 | `result-track:0f8cc28900755d707a318c1ed4a32a3c9b90405b1fb22e08d9b000a019c6e907` |
| 29 | `theorem` | [linearization_ε_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/linearization-hom.md) | 228 | `result-track:05c30132a2a0175f45d3df1be1a0949513e1c9764ad0a4b3a6039eed50e52e8a` |
| 30 | `theorem` | [linearization_ε_inv_hom_apply](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/linearization-inv-hom-apply.md) | 234 | `result-track:6c42e3fdfc30ee4a04b81a6a217aaac40c888c7211508a837e8c41827eb0c43d` |
| 31 | `def` | [linearizationTrivialIso](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/linearizationtrivialiso.md) | 245 | `declaration-track:3fef31ce8e033e3faf76c03cb7a2bdfcadb1eb0fd8076e11ddcbc5f5cb5dbba6` |
| 32 | `abbrev` | [ofMulAction](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/ofmulaction.md) | 254 | `declaration-track:b93574456059d578c33b96d753f853c361e7378207c2e0bc48b77859d6b0414e` |
| 33 | `def` | [leftRegular](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/leftregular.md) | 260 | `declaration-track:d71518d8da255c4e770949fe20e27216816d33459d1f8f1af388eb8f97ee7ae9` |
| 34 | `def` | [diagonal](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/diagonal.md) | 266 | `declaration-track:374a993611b92b630c5f7305795cac1af9316c9fb179b56d2d563e29539d7dea` |
| 35 | `def` | [linearizationOfMulActionIso](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/linearizationofmulactioniso.md) | 273 | `declaration-track:3c2d2d9d93144a99a69d0ea3e7019699d63383ccf2ad61f6caa6a5cdfd5cde29` |
| 36 | `def` | [leftRegularHom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/leftregularhom.md) | 284 | `declaration-track:227efdeb872eb35a16cea7a886de832730ce3c990c95eef07c67d4d503384ea4` |
| 37 | `theorem` | [leftRegularHom_apply](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/leftregularhom-apply.md) | 299 | `result-track:b38f75231e3089536e801df4acf710514b40c9287ce3c29442401ceccf0da2d9` |
| 38 | `def` | [leftRegularHomEquiv](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/leftregularhomequiv.md) | 310 | `declaration-track:a1682a3dae90ec184e2c181e7f8c79facf3e0c1832fe00a07875560be73b9305` |
| 39 | `theorem` | [leftRegularHomEquiv_symm_single](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/leftregularhomequiv-symm-single.md) | 335 | `result-track:7b0a2d6309e0d0b7101e9bae437bde391c9ea6506d31da2f6c5c9ed1783f4171` |
| 40 | `def` | [ihom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/ihom.md) | 356 | `declaration-track:619e2ecf535306d7bca22653f405ed4f01200398287b0630f2e9875cbe70e9cb` |
| 41 | `theorem` | [ihom_obj_ρ_apply](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/ihom-obj-apply.md) | 368 | `result-track:004a479481329f53fca2f9437343fb85de609b96eea6b36c88a42e192cbc494f` |
| 42 | `def` | [homEquiv](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/homequiv.md) | 377 | `declaration-track:4cf652b3c2499f592bbf0a85fae4baae4ddcb62b684d0a19fc4be830ccf2d1ec` |
| 43 | `theorem` | [homEquiv_apply_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/homequiv-apply-hom.md) | 409 | `result-track:2326c4c6d3495702b0d0e117754630fd00b493cf751c60d109072eba733fbc23` |
| 44 | `theorem` | [homEquiv_symm_apply_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/homequiv-symm-apply-hom.md) | 416 | `result-track:683a6cc04a7abb283b41f1c99d409208567099251b754e4226bb8824972006b7` |
| 45 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/instance-source-edition-7.md) | 421 | `declaration-track:b4d2a0006599d930a56152abd1157760b41ada384b4a43946e7413257f61cf62` |
| 46 | `theorem` | [ihom_obj_ρ_def](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/ihom-obj-def.md) | 433 | `result-track:19eefaadd36f711c7057a2b4f3b31587eb65ca11226e3f46ac5f2f5d19f2c65e` |
| 47 | `theorem` | [homEquiv_def](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/homequiv-def.md) | 439 | `result-track:a64b14ee69cccb70b6fe1851a87274e656bd7dd1e6910811479cf79adc247664` |
| 48 | `theorem` | [ihom_ev_app_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/ihom-ev-app-hom.md) | 445 | `result-track:e4c8f11e008695d15032d3ecbc34ebce26781fd801b3e88d47a92790d3f7a9c0` |
| 49 | `theorem` | [ihom_coev_app_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/ihom-coev-app-hom.md) | 454 | `result-track:5b2ef18164ce57302065c7e8da58c473be0c6b8b15b42271fe7ab4e8759bf590` |
| 50 | `def` | [MonoidalClosed.linearHomEquiv](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/monoidalclosed-linearhomequiv.md) | 464 | `declaration-track:1b51f82181a2b309f025006c09091cc76bd1a5256ad78688e51b564760219943` |
| 51 | `def` | [MonoidalClosed.linearHomEquivComm](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/monoidalclosed-linearhomequivcomm.md) | 473 | `declaration-track:3bcb9217400fc5879c1cf7a53c69dbaff2d61c3a959bc5add6231d66a3e51475` |
| 52 | `theorem` | [MonoidalClosed.linearHomEquiv_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/monoidalclosed-linearhomequiv-hom.md) | 481 | `result-track:a8b7d60c3c05273cbcfc51b832f39cb9e4a95c9d6c50b788846c0e5f169cd3b5` |
| 53 | `theorem` | [MonoidalClosed.linearHomEquivComm_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/monoidalclosed-linearhomequivcomm-hom.md) | 488 | `result-track:cdb7d6128c68db0b8fc187c88e4cb88ceed6d5e60a1103cd5afe089b9561dbf7` |
| 54 | `theorem` | [MonoidalClosed.linearHomEquiv_symm_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/monoidalclosed-linearhomequiv-symm-hom.md) | 495 | `result-track:303ab1d0a18441329c53b44b0cbf3e8601b15262bb509da3faea0ba348d1669b` |
| 55 | `theorem` | [MonoidalClosed.linearHomEquivComm_symm_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/monoidalclosed-linearhomequivcomm-symm-hom.md) | 502 | `result-track:f2f5a847ceead56f10f06070f6ce35f73cb5bd92f50df97b8849f11cce6fef72` |
| 56 | `def` | [repOfTprodIso](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/repoftprodiso.md) | 519 | `declaration-track:a600453a14c7331eb9ed4b5075d35816084668c743ddd1821abebd522d579bbe` |
| 57 | `theorem` | [repOfTprodIso_apply](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/repoftprodiso-apply.md) | 524 | `result-track:730b41c891a45638280480d0bd5d7610229b0303717511c9d2aaf6f965a057f9` |
| 58 | `theorem` | [repOfTprodIso_inv_apply](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/repoftprodiso-inv-apply.md) | 529 | `result-track:3cf7ed0c8b771d96abe2e1810481680d3a49fb1ffb194f4bba60bbed7b9d962c` |
| 59 | `example` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/example-source-edition-2.md) | 546 | `declaration-track:dcbc414c7ee4c2af028a2dc42903926b7883c7aaebf64556342a9c54b1313b94` |
| 60 | `example` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/example-source-edition-3.md) | 548 | `declaration-track:fa12dd16fe73034892853320e879c16085115a04a3e7d5c4310076dda1bc4ad0` |
| 61 | `example` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/example.md) | 550 | `declaration-track:863772c47f80e4d9d5b1991355345c3df1daf76cc87850327c9093d9f2de418e` |
| 62 | `theorem` | [to_Module_monoidAlgebra_map_aux](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/to-module-monoidalgebra-map-aux.md) | 555 | `result-track:da481c014e7e4d125f3509bf1be9416225cd54f93a8901ccc5fce74fda89b0a4` |
| 63 | `def` | [toModuleMonoidAlgebraMap](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/tomodulemonoidalgebramap.md) | 572 | `declaration-track:3c5858424b6e666664174cb1f95e8ba463e3e6e1335b7efe8796233149f47fd8` |
| 64 | `def` | [toModuleMonoidAlgebra](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/tomodulemonoidalgebra.md) | 580 | `declaration-track:557fb5122cb26f04830c8d5aea0bb2796f7d1c50f0157b0bb1d2a9efe3ee88ad` |
| 65 | `def` | [ofModuleMonoidAlgebra](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/ofmodulemonoidalgebra.md) | 587 | `declaration-track:af65b8fedeebfadff49ca0f4534ff356972a137b3148bb3f647cf3e311777088` |
| 66 | `theorem` | [ofModuleMonoidAlgebra_obj_coe](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/ofmodulemonoidalgebra-obj-coe.md) | 595 | `result-track:d0437ef3c4a4ac661300b61defd12b3f6f6c720dbfd4a31d9567b122ccce3d96` |
| 67 | `theorem` | [ofModuleMonoidAlgebra_obj_ρ](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/ofmodulemonoidalgebra-obj.md) | 601 | `result-track:c0b2a5eb59104f41f780a37d79151470f996a9d2f7e359a16053bacc9594d2fc` |
| 68 | `def` | [counitIsoAddEquiv](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/counitisoaddequiv.md) | 608 | `declaration-track:34b13eea3698dca1addb59133b83f67049245cb6d21de88ffe7e580d9e6c13c2` |
| 69 | `def` | [unitIsoAddEquiv](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/unitisoaddequiv.md) | 617 | `declaration-track:ff0103bb6a5364a1f16eba72665886eae8b1d9312ff6c681ebc08aadd0870fa6` |
| 70 | `def` | [counitIso](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/counitiso.md) | 625 | `declaration-track:f73476f38c61922894f58df96f2a1d473b82bca7d6c824bfe266923245c9be0d` |
| 71 | `theorem` | [unit_iso_comm](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/unit-iso-comm.md) | 638 | `result-track:9aac1061ba385f7925d8f2cb0b56648c5bea256467abd6e4c1490daae971cb20` |
| 72 | `def` | [unitIso](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/unitiso.md) | 651 | `declaration-track:33055fbb7c9120929c725f9a0394bee8bd4194e87b22b5a4b97d32d3ad5bfb7b` |
| 73 | `def` | [equivalenceModuleMonoidAlgebra](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryRepRepSourceEdition1.lean/declarations/equivalencemodulemonoidalgebra.md) | 669 | `declaration-track:7f63c29c2e390425b68eb359cfbae63bf091b8e90232af175e6e6bb20eff519c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d9e18794cc768f1ce2b0bb534d2bc93611444bf012a2e733ca1e453f2134522 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Rep/Variantb2c38cd35a1f31795f15d81d88165beaf3eb1edc01a5ef32f719481827e4c068.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Rep/Variantb2c38cd35a1f31795f15d81d88165beaf3eb1edc01a5ef32f719481827e4c068.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
