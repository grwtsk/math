# Verification target: Gamma PNTScattering

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f66c896f8a4c4b24e6194ad0257691698146f71",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GammaPNTScattering/Variant44110f0d1b71a0621b163b1146e101f75c8a7601bd4e8820410f2ca866f662f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/GammaPNTScattering.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/GammaPNTScattering.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f66c896f8a4c4b24e6194ad0257691698146f71`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GammaPNTScattering/Variant44110f0d1b71a0621b163b1146e101f75c8a7601bd4e8820410f2ca866f662f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GammaPNTScattering/Variant44110f0d1b71a0621b163b1146e101f75c8a7601bd4e8820410f2ca866f662f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.PrimeCompact` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GammaPrincipalPart](../../../../../ComputerScience/AlgorithmsInComputerScience/GammaPNTScattering.lean/declarations/gammaprincipalpart.md) | 7 | `declaration-track:de55aa58fb9ad595cd3215db35aa20bedf59350ceeff98a4e48e947383ae6564` |
| 2 | `def` | [GammaPrincipalPart.canceled](../../../../../ComputerScience/AlgorithmsInComputerScience/GammaPNTScattering.lean/declarations/gammaprincipalpart-canceled.md) | 13 | `declaration-track:bf628b229c67a27a22983ca52949b9b9afea9663139dafa2ec38c59b37a00a0e` |
| 3 | `structure` | [GammaPNTScattering](../../../../../ComputerScience/AlgorithmsInComputerScience/GammaPNTScattering.lean/declarations/gammapntscattering.md) | 16 | `declaration-track:53bf1c2e488fa3178074ef829c1b02980ffe3638ca82fbf66d9a4119ba97f9fa` |
| 4 | `def` | [GammaPNTScattering.principalPartsCanceled](../../../../../ComputerScience/AlgorithmsInComputerScience/GammaPNTScattering.lean/declarations/gammapntscattering-principalpartscanceled.md) | 27 | `declaration-track:0a0c2eaa71f41d2b9ea9e7be83d68c973809e12f8434805825f90604b6d5ee6a` |
| 5 | `def` | [GammaPNTScattering.admitted](../../../../../ComputerScience/AlgorithmsInComputerScience/GammaPNTScattering.lean/declarations/gammapntscattering-admitted.md) | 31 | `declaration-track:d4bea5399ec308e6b19fec7edf65787a6ab3f70a6e90af4309b7a271ac37d3f0` |
| 6 | `structure` | [EnhancedCompactResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/GammaPNTScattering.lean/declarations/enhancedcompactresidue.md) | 37 | `declaration-track:cab1d6db673e9674b662660283e16535538452c3d44f10a2159fb0304227e8b3` |
| 7 | `def` | [EnhancedCompactResidue.value](../../../../../ComputerScience/AlgorithmsInComputerScience/GammaPNTScattering.lean/declarations/enhancedcompactresidue-value.md) | 44 | `declaration-track:be0a2d6264c41886a47c90a2ae161a776a8f58450505caa9830d9797cc9aff05` |
| 8 | `def` | [EnhancedCompactResidue.resolved](../../../../../ComputerScience/AlgorithmsInComputerScience/GammaPNTScattering.lean/declarations/enhancedcompactresidue-resolved.md) | 47 | `declaration-track:b7339dbfbc67e4b4d209329f36ce6cb57b6dbc807ba9d38243e5c7d7e082465f` |
| 9 | `theorem` | [gamma_principal_part_canceled_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/GammaPNTScattering.lean/declarations/gamma-principal-part-canceled-iff.md) | 50 | `result-track:2c54bf482573d35ddcb2be0f279d2ea7c069fc6d5edb3b8f5a26a393c7973455` |
| 10 | `theorem` | [enhanced_compact_residue_zero_resolved](../../../../../ComputerScience/AlgorithmsInComputerScience/GammaPNTScattering.lean/declarations/enhanced-compact-residue-zero-resolved.md) | 56 | `result-track:d092af6c8f7f75034cdd62e195d4d4301a12241d36a57379e4aed44399acb5a9` |
| 11 | `theorem` | [admitted_scattering_has_pnt_residue_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/GammaPNTScattering.lean/declarations/admitted-scattering-has-pnt-residue-zero.md) | 62 | `result-track:def58680a10decc88fab551923a7ca7582417136aed2223ab2a5776f86420642` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd802b00f6996e230c4b31a44a2ec81758dabbbaaa66e82be1b5259c3c416baa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GammaPNTScattering/Variant44110f0d1b71a0621b163b1146e101f75c8a7601bd4e8820410f2ca866f662f2.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GammaPNTScattering/Variant44110f0d1b71a0621b163b1146e101f75c8a7601bd4e8820410f2ca866f662f2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
