# Verification target: Defs Defs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eeffa7955e19ba86f20a23bd3de4b6e524b24f08",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Defs/Variant698b84d4d9aa67b1181341ab0bb99f9c94fdd69daf7679a0f23976e0065c61c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/DefsDefs.lean/index.md) · [Full source](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/DefsDefs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eeffa7955e19ba86f20a23bd3de4b6e524b24f08`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Defs/Variant698b84d4d9aa67b1181341ab0bb99f9c94fdd69daf7679a0f23976e0065c61c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Defs/Variant698b84d4d9aa67b1181341ab0bb99f9c94fdd69daf7679a0f23976e0065c61c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Multiplicity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factors` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [padicValNat](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/DefsDefs.lean/declarations/padicvalnat.md) | 31 | `declaration-track:b91f5d884fce11a98c5cf9614edee512e97770f384ad91b9e8449ef9c301754a` |
| 2 | `theorem` | [padicValNat_def'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/DefsDefs.lean/declarations/padicvalnat-def-source-edition-2.md) | 34 | `result-track:679f869b444abe47ca407cd4c15ba4bbe92dd7df1156a91e21c88e84e30a6334` |
| 3 | `theorem` | [padicValNat_def](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/DefsDefs.lean/declarations/padicvalnat-def.md) | 41 | `result-track:5a411badd24f6e65bf94d02c05d658e484748b3b98bc8c301eeaac2193934340` |
| 4 | `theorem` | [padicValNat_eq_emultiplicity](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/DefsDefs.lean/declarations/padicvalnat-eq-emultiplicity.md) | 47 | `result-track:57831f561d54778d86815f8f130548ef45521e25913dff473f10bb1f7b884f14` |
| 5 | `theorem` | [zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/DefsDefs.lean/declarations/zero.md) | 58 | `result-track:396b88ff863be2b8317ac5e55ed5ae6e24c5bdeff37df7463ebc1730f59f2118` |
| 6 | `theorem` | [one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/DefsDefs.lean/declarations/one.md) | 62 | `result-track:413111381dee563e7ea86ca4e96e9f1341c170dda2731682d24eff4459510f82` |
| 7 | `theorem` | [eq_zero_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/DefsDefs.lean/declarations/eq-zero-iff.md) | 65 | `result-track:c126dbc41a4b77e8c97d390385f81819fd8a38bd17a7b74ed0f0b9173023a731` |
| 8 | `theorem` | [le_emultiplicity_iff_replicate_subperm_primeFactorsList](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/DefsDefs.lean/declarations/le-emultiplicity-iff-replicate-subperm-primefactorslist.md) | 73 | `result-track:87e7d72861b36151a75dd2f2f71fca4c117a604147b8a98e0aff8750a04adaf4` |
| 9 | `theorem` | [le_padicValNat_iff_replicate_subperm_primeFactorsList](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/DefsDefs.lean/declarations/le-padicvalnat-iff-replicate-subperm-primefactorslist.md) | 79 | `result-track:e2d8bbf2595fbb1194fa6e552c33c2bedb6e010a406578f6086d2226465393dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4cb01b41f60acece3fc546e5ad40f1dc5076bb9d2f0225648585add16d4ca49b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Defs/Variant698b84d4d9aa67b1181341ab0bb99f9c94fdd69daf7679a0f23976e0065c61c4.lean","GRWTSK/_verification/specifications/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Defs/Variant698b84d4d9aa67b1181341ab0bb99f9c94fdd69daf7679a0f23976e0065c61c4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
