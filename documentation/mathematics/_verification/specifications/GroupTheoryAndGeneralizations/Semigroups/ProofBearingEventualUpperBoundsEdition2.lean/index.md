# Verification target: Proof Bearing Eventual Upper Bounds Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1a3f00c0d7f1bcbc397958969d252b18568a77c",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantf816289de581d13d2efa09a42299177e5960a3fab9a5a41f2848c1fbb2e475f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition2.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1a3f00c0d7f1bcbc397958969d252b18568a77c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantf816289de581d13d2efa09a42299177e5960a3fab9a5a41f2848c1fbb2e475f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantf816289de581d13d2efa09a42299177e5960a3fab9a5a41f2848c1fbb2e475f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.List.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ext` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BoundCertificate](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition2.lean/declarations/boundcertificate.md) | 18 | `declaration-track:ab4ee665b3af7ed8a27ee4e76dd0c34cfbe7c7f7f4fe227137567ea6cf853558` |
| 2 | `constant` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition2.lean/declarations/constant-source-edition-3.md) | 20 | `declaration-track:be1448f9152ff268bd987ac34c33cac07d7312352674a058c9770a388538d7d6` |
| 3 | `theorem` | [ext](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition2.lean/declarations/ext.md) | 29 | `result-track:89cdd5d75a9b3dd1518c38ed9575071666b89b48f8d3acaf8d96fb420dc0d62a` |
| 4 | `def` | [unit](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition2.lean/declarations/unit.md) | 36 | `declaration-track:03c922e0b6797dd07901375ae542bb3b1a40fcaa966f00e2d175711bd92457d4` |
| 5 | `def` | [compose](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition2.lean/declarations/compose.md) | 39 | `declaration-track:d43d224254159974454a5103e2f6be4599c92a034ea7b5ed975b084f2268ac69` |
| 6 | `constant` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition2.lean/declarations/constant.md) | 41 | `declaration-track:2bde45d17a00362ec71b0f54481f1fba5301800bf4177bade51cfd807bde8640` |
| 7 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition2.lean/declarations/instance.md) | 49 | `declaration-track:c974cea40a653b60f81571532e6987a787399edbd0d6d664d110f5ce0882d32f` |
| 8 | `theorem` | [compose_function](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition2.lean/declarations/compose-function.md) | 77 | `result-track:99faff5c0bc8f8e15a40e6427f28c5ad61aa94bc99a0fb3dc12b9abcc84f650d` |
| 9 | `theorem` | [compose_constant](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition2.lean/declarations/compose-constant.md) | 79 | `result-track:1160877304597caa31cbe9b402f425dde68f1bbe4c3f5a61cff26e32dcb011f5` |
| 10 | `theorem` | [compose_radius](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition2.lean/declarations/compose-radius.md) | 81 | `result-track:75f417d0b269bbc43e5193e96e1d388b70cb4162a3b639e7e6cc1ecf33ca0d01` |
| 11 | `theorem` | [unit_function](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition2.lean/declarations/unit-function.md) | 83 | `result-track:6233c4e6f68a87054e5255a09ae1847e8cf5bac633e633123b1ab0e8219f7b39` |
| 12 | `theorem` | [unit_constant](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition2.lean/declarations/unit-constant.md) | 84 | `result-track:5d9b145e398542dfd67a55d6de655465437f6454fae876e643f08f7d2fad4ade` |
| 13 | `theorem` | [unit_radius](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition2.lean/declarations/unit-radius.md) | 85 | `result-track:7b1cba5bfddba6abd047ebcddaa782382383478d9404d2e504b7cf961e4e5932` |
| 14 | `def` | [constantAdd](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition2.lean/declarations/constantadd.md) | 88 | `declaration-track:67aeaafc305db4c034eec7c19fb4778c527255804d8da29f4a3fcfb995bfa502` |
| 15 | `theorem` | [prod_function](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition2.lean/declarations/prod-function.md) | 91 | `result-track:99f5034dc7e14067975d09832667166f291117077cbebc960f03ef2fc985d083` |
| 16 | `theorem` | [prod_constant](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition2.lean/declarations/prod-constant.md) | 97 | `result-track:963792bed163c52a3619e92cc39b74b485cdadfa71268b240618a72317a48b48` |
| 17 | `theorem` | [prod_radius](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition2.lean/declarations/prod-radius.md) | 104 | `result-track:c0bae5b6d377e22444956f3a52f6a14004edcf76b15ceda9102d25788e6c137a` |
| 18 | `theorem` | [prod_bound](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition2.lean/declarations/prod-bound.md) | 112 | `result-track:fe42a860ff0f49e458135d7ddb7f06aa2074a0e9721316a16bdef1736da7226b` |
| 19 | `theorem` | [flatten_prod](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition2.lean/declarations/flatten-prod.md) | 117 | `result-track:94aa85563caf0f61bfdc8594631d48b9ca5d2372fb45a266cf3991124159cd03` |
| 20 | `def` | [radiusOnly](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition2.lean/declarations/radiusonly.md) | 124 | `declaration-track:2196ad87a773c72cf06b1e024a78f2c139c47bedf0fbf05ae5005df4528d7fb3` |
| 21 | `theorem` | [radiusOnly_idempotent](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition2.lean/declarations/radiusonly-idempotent.md) | 127 | `result-track:6af69377a1f86268e3b6a6f98046f166e1ccc7e4e1eb3dea03e1b00e95ddaebc` |
| 22 | `def` | [canceled](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition2.lean/declarations/canceled.md) | 136 | `declaration-track:157e12d5e5babf990a0a2c80597a588610d72b8efd5e12dd81e78788546a4957` |
| 23 | `constant` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition2.lean/declarations/constant-source-edition-2.md) | 138 | `declaration-track:8555d0f6eba4e369f5cae810e71fa60e902f8505114b87a95055878a5082c7aa` |
| 24 | `theorem` | [canceled_eq_unit](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition2.lean/declarations/canceled-eq-unit.md) | 144 | `result-track:cf74aa50b406aa8abceabcd641fa81b2c85a4504225ea7fd63630f27e262ff42` |
| 25 | `theorem` | [unbounded_positive_member](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition2.lean/declarations/unbounded-positive-member.md) | 153 | `result-track:9dbade606cf8e62597bf9e0a94c6f51534eb89d8971d186cc083a965eb0e491b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5354e15dd8655faea9a27643bffbb85da1e8cdf1df7cf206d1b610af6dd64ee0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantf816289de581d13d2efa09a42299177e5960a3fab9a5a41f2848c1fbb2e475f8.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantf816289de581d13d2efa09a42299177e5960a3fab9a5a41f2848c1fbb2e475f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
