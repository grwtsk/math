# Verification target: Residue External Obligation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ab775e621012e8e58ff465926f6107f53991b46",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantc53beb7ca09cfe2ab6b3971a747f71103533095a44c08071e307ee071fb4e07a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidueExternalObligation.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidueExternalObligation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ab775e621012e8e58ff465926f6107f53991b46`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantc53beb7ca09cfe2ab6b3971a747f71103533095a44c08071e307ee071fb4e07a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantc53beb7ca09cfe2ab6b3971a747f71103533095a44c08071e307ee071fb4e07a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Compression.Core` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ExternalObligation](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidueExternalObligation.lean/declarations/externalobligation.md) | 11 | `declaration-track:6d74f1b6b9cccb4336a00924a1ebc874441eff594a4113f9b10f0c456a216219` |
| 2 | `inductive` | [StatementStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidueExternalObligation.lean/declarations/statementstatus.md) | 19 | `declaration-track:567ce0a646c46da653179b974b8b6e645dad1d990c067edc5174609b60cb71de` |
| 3 | `inductive` | [ResidueDisposition](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidueExternalObligation.lean/declarations/residuedisposition.md) | 30 | `declaration-track:2a69aa449e32e31784441b51af608541c6e30607077503c6ccd7398bfcb21305` |
| 4 | `structure` | [CheckedResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidueExternalObligation.lean/declarations/checkedresidue.md) | 36 | `declaration-track:3109b93239d407f54d4d8d9eff814badba2d2d3bee16f29adff334d6e67a0a7e` |
| 5 | `def` | [openExternalResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidueExternalObligation.lean/declarations/openexternalresidue.md) | 44 | `declaration-track:dfa697fb2461e324c9cd30276efe498ac564958fa119d62af561fdaf80205c6f` |
| 6 | `def` | [defaultResidueRecord](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidueExternalObligation.lean/declarations/defaultresiduerecord.md) | 53 | `declaration-track:ce594cf7418f7303014fdd1fded5f99212dd7ea496718ea5e75fcc9f82ec35dd` |
| 7 | `def` | [quarantinedExternalObligations](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidueExternalObligation.lean/declarations/quarantinedexternalobligations.md) | 66 | `declaration-track:ba5eeea02952f9ccf6b5212efbce0389c2ef8706215c02e73604cfaa9dbda20c` |
| 8 | `def` | [totalOpenObligations](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidueExternalObligation.lean/declarations/totalopenobligations.md) | 69 | `declaration-track:ad0cd1338537656ec6968b07a90d1dea775425a68d84ec52182ec17563fcbb2a` |
| 9 | `theorem` | [initial_residues_open](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidueExternalObligation.lean/declarations/initial-residues-open.md) | 72 | `result-track:67574f55cdd366eec154ae86dea0bf07f570027ab005a1e616f43446d02422c0` |
| 10 | `theorem` | [quarantinedExternalObligations_all_open](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidueExternalObligation.lean/declarations/quarantinedexternalobligations-all-open.md) | 76 | `result-track:a0983aa4afe52964792eaadf84871225120a596f3603c82644decc0995f3501a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=43837cab2d68ebecf1787d775bcfbb04820f780498585d053a1940ed3136321e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantc53beb7ca09cfe2ab6b3971a747f71103533095a44c08071e307ee071fb4e07a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantc53beb7ca09cfe2ab6b3971a747f71103533095a44c08071e307ee071fb4e07a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
