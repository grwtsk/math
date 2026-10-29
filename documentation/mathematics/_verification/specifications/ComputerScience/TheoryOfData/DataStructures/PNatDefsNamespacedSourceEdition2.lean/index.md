# Verification target: PNat Defs Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "155dcb364e1147ec86f98d572171a6f263d0865f",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant84b1dd3607aba2a49f66fa5e276453b9cbd78c30db38f24d2e3c78799c8efcca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `155dcb364e1147ec86f98d572171a6f263d0865f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant84b1dd3607aba2a49f66fa5e276453b9cbd78c30db38f24d2e3c78799c8efcca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant84b1dd3607aba2a49f66fa5e276453b9cbd78c30db38f24d2e3c78799c8efcca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Order.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Notation` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Coe` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lift` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/instance-source-edition-4.md) | 30 | `declaration-track:c334a95ece6720ad7a14178078dfe88adf5ab4127f6c233b778a5cf8082ce37f` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/instance-source-edition-2.md) | 33 | `declaration-track:65b2e9b8d32b1092367de46e41a42f6607d6908775d9061625c9657fe1326806` |
| 3 | `theorem` | [mk_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/mk-coe.md) | 40 | `result-track:f08dfd67d74089331ef188ef65ae38c2cbe02780d413fdfebf474641a4907cad` |
| 4 | `def` | [natPred](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/natpred.md) | 44 | `declaration-track:d5933132be4b2e7dd9a6cf55d29d136b6c7bd38baf4f6b568d24b8953dca0773` |
| 5 | `theorem` | [natPred_eq_pred](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/natpred-eq-pred.md) | 48 | `result-track:3906b859854af7f8e902ca5d39a56dab7128265563440f200a868ae5095c3741` |
| 6 | `def` | [toPNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/topnat.md) | 57 | `declaration-track:3b6ddb7193c6ca385a64d54f0948a5fc0b6e40dfae72a9ea36f87bd982999610` |
| 7 | `def` | [succPNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/succpnat.md) | 61 | `declaration-track:d6347e9601fef7318c714fb787caee52d8afcd3fcd3f21b8ae59c84aae2d863f` |
| 8 | `theorem` | [succPNat_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/succpnat-coe.md) | 65 | `result-track:c55ca05411cf78d6d4be82a480af93310e1f7ef8e086762f95d0c8b4e461be6e` |
| 9 | `theorem` | [natPred_succPNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/natpred-succpnat.md) | 69 | `result-track:72274f0101936a51b2772b7baaa679db60fb4832550d99f92d581dc1614a9d39` |
| 10 | `theorem` | [PNat Defs Namespaced Source Edition2](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-mkcoe.md) | 73 | `result-track:4a585567ecaf2da5c68827ba7a1a00c9ae1ebe9a2bbd9e8c065c267106e5d596` |
| 11 | `def` | [toPNat'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/topnat-source-edition-2.md) | 78 | `declaration-track:a2aeaf552991ae9878825c9758a69b88f0588f8e80dd92e08ea4e37c88557528` |
| 12 | `theorem` | [toPNat'_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/topnat-zero.md) | 82 | `result-track:d2278fb91b4be5a6a90fff880d3952a9aff4af07b6d47f19b830c3291ca67af0` |
| 13 | `theorem` | [toPNat'_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/topnat-coe.md) | 85 | `result-track:20192cb88df631d1bff0d0e19155bd22e3e1b417389cec03e06b3133bcad5c4e` |
| 14 | `theorem` | [mk_le_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/mk-le-mk.md) | 102 | `result-track:24d5dd7a233f76a253e61ca6a371216d5b459dda160793556492dd51843690fa` |
| 15 | `theorem` | [mk_lt_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/mk-lt-mk.md) | 104 | `result-track:133520c20565034ba86f4cfd15826a9a13728e5c956dfbd14fe453adc4dbd8a1` |
| 16 | `theorem` | [coe_le_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/coe-le-coe.md) | 107 | `result-track:b994c813bb440178095a1f50345466e284f83e275ac58247ed51cb2d193d1fee` |
| 17 | `theorem` | [coe_lt_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/coe-lt-coe.md) | 111 | `result-track:d48f4531aa06067d16b18895da29cf5b32a4383c9a536f6c978859f09ab47994` |
| 18 | `theorem` | [pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/pos.md) | 115 | `result-track:6e936bd4e7f456fd819b4737e211979608e84a6a415c0ed37c0fc2d7734a5185` |
| 19 | `theorem` | [eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/eq.md) | 118 | `result-track:ba84cdffee6836a3e410aea1bd3794b08bc0590b4cb152f60d555e58b27d564b` |
| 20 | `theorem` | [coe_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/coe-injective.md) | 121 | `result-track:0e6825d7e5586635d1c1ba8f1cad0f7887e69abdb4cc8c47c3bdc37ce5852e81` |
| 21 | `theorem` | [ne_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/ne-zero.md) | 125 | `result-track:010ad14a9e231de9ee1fea7feb484c39d8227c5b17429b51e48410e99fa12a86` |
| 22 | `instance` | [PNat Defs Namespaced Source Edition2](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-mkcoe-source-edition-2.md) | 128 | `declaration-track:6c41f72c93daaca7fcd422e7ff4a2e35514c5ff92e191f596200234a8604d8e9` |
| 23 | `theorem` | [toPNat'_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/topnat-coe-source-edition-2.md) | 131 | `result-track:76ff24a19c34a2171dc1d4eff8566919c986cef7a70870632fd2f0dc7a155f96` |
| 24 | `theorem` | [coe_toPNat'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/coe-topnat.md) | 135 | `result-track:03fd46db79e9e996875e497cf31164963e7c66266d6ebbc8121e040ff3b472c3` |
| 25 | `theorem` | [one_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/one-le.md) | 139 | `result-track:799c1c559ba7707c16000f46067242331b5d934df2a014a61f4d5341cac1fccc` |
| 26 | `theorem` | [not_lt_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/not-lt-one.md) | 143 | `result-track:594956b387a2a5810e6303672bff9aad7ff2a75411c80e02297f3869792ca68e` |
| 27 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/instance.md) | 146 | `declaration-track:483935fa0d5aae6f4b7a8cc9f8833045a8cfa26db3340e58250889db1eea7cc7` |
| 28 | `theorem` | [mk_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/mk-one.md) | 151 | `result-track:2b30bc7c26e5b32ac3ea251d6f12bf85c5e02ec5f7906900bc8995b63baff6fc` |
| 29 | `theorem` | [one_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/one-coe.md) | 155 | `result-track:aa0a5f0a73a08d17c9977e0d09cdecb8464ccbcba4f94158880d0772540a4045` |
| 30 | `theorem` | [coe_eq_one_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/coe-eq-one-iff.md) | 159 | `result-track:028002f48846dbce6209fe6056d4ce608e7692e825b94b40ae00241c11e2355d` |
| 31 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/instance-source-edition-3.md) | 162 | `declaration-track:8bbcc468b52732fe7107638950bec8af532470b29edc174b28f40588c4f52847` |
| 32 | `def` | [strongInductionOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/stronginductionon.md) | 166 | `declaration-track:663b71ca3dd9748505cd0441d5f94a3c850d4a623bcd34c2d6bd5ca0351dc88b` |
| 33 | `def` | [modDivAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/moddivaux.md) | 177 | `declaration-track:89e2d817f677b88bbf49f4b06a4ddc8a3aeb3316f91fa3cc204db1e008883c5a` |
| 34 | `def` | [modDiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/moddiv.md) | 189 | `declaration-track:767c2d181892d0dbd44496a7f94a6eb82c817b61a20039589bc7db4c6c195298` |
| 35 | `def` | [mod](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/mod.md) | 195 | `declaration-track:f04fd54ca27273e45b05591d5434fca8767fc4f360eb2f7280b2a8f8d31d8d6b` |
| 36 | `def` | [div](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/div.md) | 202 | `declaration-track:de170b3a19a13f0f786971d30bb83560b32df3e3632eb8aed9d06b5b7f50de0a` |
| 37 | `theorem` | [mod_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/mod-coe.md) | 205 | `result-track:0f2a1130a9da584f8f92cb07fc95fb9b24ee1f03bc3ddaceb014af1af25bd13b` |
| 38 | `theorem` | [div_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/div-coe.md) | 216 | `result-track:388e0666b17595d017419a770ad7ff1962a4d4e8228fd3c3e7d48748069cf5a0` |
| 39 | `def` | [divExact](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/divexact.md) | 228 | `declaration-track:a09786b73be817f472a1661e6e5b21d627160d8336282ab74faefdcaf7804a01` |
| 40 | `instance` | [Nat.canLiftPNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/nat-canliftpnat.md) | 235 | `declaration-track:9b7511f4eb1c3eda51665382e59c8cddd085ae592bcce66835048de2b4b66cfb` |
| 41 | `instance` | [Int.canLiftPNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatDefsNamespacedSourceEdition2.lean/declarations/int-canliftpnat.md) | 238 | `declaration-track:f1b4f8413a778fdbe65048372b78fa965a220cd9cdf0369beb7f3ad41514c4a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=092dc51a3a06c0bed417e19471e46bd7045688ab552b556fddadd837de2303b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant84b1dd3607aba2a49f66fa5e276453b9cbd78c30db38f24d2e3c78799c8efcca.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant84b1dd3607aba2a49f66fa5e276453b9cbd78c30db38f24d2e3c78799c8efcca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
