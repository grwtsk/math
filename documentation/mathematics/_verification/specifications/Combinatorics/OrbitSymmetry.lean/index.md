# Verification target: Orbit Symmetry

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2053830b5ccdc9cb3eb498ddab86945c58d262b3",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrbitSymmetry/Variantf8ae6763293f54e603e9bd5d24bd1f67bad58008cf5d7af99308ff8f33059864.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/OrbitSymmetry.lean/index.md) · [Full source](../../../../Combinatorics/OrbitSymmetry.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2053830b5ccdc9cb3eb498ddab86945c58d262b3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrbitSymmetry/Variantf8ae6763293f54e603e9bd5d24bd1f67bad58008cf5d7af99308ff8f33059864.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrbitSymmetry/Variantf8ae6763293f54e603e9bd5d24bd1f67bad58008cf5d7af99308ff8f33059864.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.ConnesBitfield.Equivariance` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BitfieldObservable](../../../../Combinatorics/OrbitSymmetry.lean/declarations/bitfieldobservable.md) | 16 | `declaration-track:806bb306c905cf2b7d11efc4a799d5708036ad252e05e683f96f2dec684be6b8` |
| 2 | `def` | [bitfieldObservableAction](../../../../Combinatorics/OrbitSymmetry.lean/declarations/bitfieldobservableaction.md) | 20 | `declaration-track:c09921012ca3d809faf10bc6b02d0f0f49953705ca8d715e1e60ef467696b693` |
| 3 | `def` | [AutomorphismInvariantObservable](../../../../Combinatorics/OrbitSymmetry.lean/declarations/automorphisminvariantobservable.md) | 30 | `declaration-track:afd73095d997642f001c2e6915a8de468f3471219ca8264a8030f941ec0150b0` |
| 4 | `def` | [reynoldsProjection](../../../../Combinatorics/OrbitSymmetry.lean/declarations/reynoldsprojection.md) | 39 | `declaration-track:066ecdb3535f6a7cfb72d662d86410446f5699529a341a6db3d1b14588f617f9` |
| 5 | `def` | [nontrivialSymmetryComponent](../../../../Combinatorics/OrbitSymmetry.lean/declarations/nontrivialsymmetrycomponent.md) | 51 | `declaration-track:5c0272ad35af852411ff5ebb5125835bd63aaee5f27ae8fe3a78809c05a3269b` |
| 6 | `def` | [OrbitEquivalent](../../../../Combinatorics/OrbitSymmetry.lean/declarations/orbitequivalent.md) | 60 | `declaration-track:8e080c66c4a01c0a00df0e423fc8a94b71a13be6cb5f9f2f244eedd430387b3d` |
| 7 | `def` | [bitfieldOrbitSetoid](../../../../Combinatorics/OrbitSymmetry.lean/declarations/bitfieldorbitsetoid.md) | 67 | `declaration-track:2be2529627b05e3999a08e0bc9289bae0ff4023aa243e83b365f14ebcf4ebc80` |
| 8 | `abbrev` | [BitfieldOrbitQuotient](../../../../Combinatorics/OrbitSymmetry.lean/declarations/bitfieldorbitquotient.md) | 96 | `declaration-track:15875bbe3aba3defacf626902d8d084b060c8260eadb4a7216dc7ebd2fd0d6e2` |
| 9 | `def` | [automorphismOrbit](../../../../Combinatorics/OrbitSymmetry.lean/declarations/automorphismorbit.md) | 101 | `declaration-track:bea249494dac56b0ec3de1354ec293fae50940a471e75e22fada7dc02b12ade0` |
| 10 | `def` | [automorphismStabilizer](../../../../Combinatorics/OrbitSymmetry.lean/declarations/automorphismstabilizer.md) | 112 | `declaration-track:2cd79b23a8c43087d14ead55dc07994f12aaaff256000835fe2b514de5d991e8` |
| 11 | `structure` | [AutomorphismInvariantLabel](../../../../Combinatorics/OrbitSymmetry.lean/declarations/automorphisminvariantlabel.md) | 128 | `declaration-track:274fc0b743b5ec3505d1df17c94e00bc8e69daae9b7f4a43d40f341f4b5c0b91` |
| 12 | `def` | [descendInvariantObservable](../../../../Combinatorics/OrbitSymmetry.lean/declarations/descendinvariantobservable.md) | 138 | `declaration-track:460a61032ed4e12c966e926f07ce23fb1247fc73b254e22c1f201dbcd14a6104` |
| 13 | `theorem` | [descendInvariantObservable_mk](../../../../Combinatorics/OrbitSymmetry.lean/declarations/descendinvariantobservable-mk.md) | 153 | `result-track:dc5bbc263726a96621a769d1f43c9c0bfe2c7ac961a1f7348570534549315390` |
| 14 | `structure` | [OrbitReynoldsCertificate](../../../../Combinatorics/OrbitSymmetry.lean/declarations/orbitreynoldscertificate.md) | 172 | `declaration-track:283784f05afebcc7c8dddce78280a849a3be196749c35f1bb20bf78cd243f364` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e476f330e8760cc3510d75bc5d4a8d678992c14d0fae3f27117efd6097e3173e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrbitSymmetry/Variantf8ae6763293f54e603e9bd5d24bd1f67bad58008cf5d7af99308ff8f33059864.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrbitSymmetry/Variantf8ae6763293f54e603e9bd5d24bd1f67bad58008cf5d7af99308ff8f33059864.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
