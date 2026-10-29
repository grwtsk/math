# Verification target: Registry Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16764cf869990076b3954cccfcc9194e5828c5e4",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Registry/Variant89a47b6ba240f256aaf56942f607a717f1d4abafe440d0be7f7865c9fddffc93.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/RegistryEdition2.lean/index.md) · [Full source](../../../../Combinatorics/RegistryEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16764cf869990076b3954cccfcc9194e5828c5e4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Registry/Variant89a47b6ba240f256aaf56942f607a717f1d4abafe440d0be7f7865c9fddffc93.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Registry/Variant89a47b6ba240f256aaf56942f607a717f1d4abafe440d0be7f7865c9fddffc93.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Taxonomy.Projection` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Registry](../../../../Combinatorics/RegistryEdition2.lean/declarations/registry.md) | 7 | `declaration-track:c16c2951f98f803b2842b08db3a427b50f6ca918daa189604e041336d0195c93` |
| 2 | `def` | [UniqueTaxonIds](../../../../Combinatorics/RegistryEdition2.lean/declarations/uniquetaxonids.md) | 19 | `declaration-track:e9a7067399966d1415122af2b9d250b773026006014165d4abfc2709ba4e765b` |
| 3 | `def` | [UniqueConceptTaxa](../../../../Combinatorics/RegistryEdition2.lean/declarations/uniqueconcepttaxa.md) | 22 | `declaration-track:498270353a5bd6f35d04c03a699692e00ea69d0bbceb290e98ff2bff9b717ce3` |
| 4 | `def` | [UniqueEvidenceIds](../../../../Combinatorics/RegistryEdition2.lean/declarations/uniqueevidenceids.md) | 25 | `declaration-track:5f204db6814cd160d8a5ad41fbbd7c99e3ac4c72b42441a89bb9713259a2f15c` |
| 5 | `def` | [UniqueWitnessEvidenceIds](../../../../Combinatorics/RegistryEdition2.lean/declarations/uniquewitnessevidenceids.md) | 28 | `declaration-track:93b84eb6d35b33234ab3c131814189018f4d1d7bfaccf3e9207ad8e189ac2bff` |
| 6 | `def` | [UniqueRelationIds](../../../../Combinatorics/RegistryEdition2.lean/declarations/uniquerelationids.md) | 31 | `declaration-track:8b8ceafc34923fbc67324ab61389335ca4bd098aa3fee6f3461aaf384efd98a3` |
| 7 | `def` | [UniqueProjectionIds](../../../../Combinatorics/RegistryEdition2.lean/declarations/uniqueprojectionids.md) | 34 | `declaration-track:aa3b20bc039807c56744e3d1ef1bf2819d74e05f93ac1ea39d2b36603ad26766` |
| 8 | `def` | [findTaxon?](../../../../Combinatorics/RegistryEdition2.lean/declarations/findtaxon.md) | 37 | `declaration-track:3bcd8eca7068938e60db8e76c1c115fd789bf7ab59d6dc84edc55561f451aaa7` |
| 9 | `def` | [findEvidence?](../../../../Combinatorics/RegistryEdition2.lean/declarations/findevidence.md) | 41 | `declaration-track:56931d63694834abf5efcb9a86ed95d1ede44c45040816abd5bd5038ff9807d0` |
| 10 | `def` | [findWitnessEvidence?](../../../../Combinatorics/RegistryEdition2.lean/declarations/findwitnessevidence.md) | 45 | `declaration-track:78b0aadefbe50e4205710dd54dc1c201d03d32bc1bba66e5a411b798f9b3a72f` |
| 11 | `def` | [WitnessesResolveAs](../../../../Combinatorics/RegistryEdition2.lean/declarations/witnessesresolveas.md) | 51 | `declaration-track:872a897d21d23fa1333e0b153a6ff17ff242e49bde6ba088391a7e14ae2d80f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b46cbed81eaf7a0f14345865831bdd1efdbffb8408417c79e0b2404cbf7c47d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Registry/Variant89a47b6ba240f256aaf56942f607a717f1d4abafe440d0be7f7865c9fddffc93.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Registry/Variant89a47b6ba240f256aaf56942f607a717f1d4abafe440d0be7f7865c9fddffc93.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
