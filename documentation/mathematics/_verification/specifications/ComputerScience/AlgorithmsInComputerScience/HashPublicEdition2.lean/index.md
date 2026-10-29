# Verification target: Hash Public Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5af965d32300706c94f351f617f2baf27a3dcc16",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant461f6275f048a7eb8b0ce7c7c6f90049278da738fe3cc57dd017544a825f49bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/HashPublicEdition2.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/HashPublicEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5af965d32300706c94f351f617f2baf27a3dcc16`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant461f6275f048a7eb8b0ce7c7c6f90049278da738fe3cc57dd017544a825f49bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant461f6275f048a7eb8b0ce7c7c6f90049278da738fe3cc57dd017544a825f49bf.lean.json)

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
| 1 | `abbrev` | [Hash256](../../../../../ComputerScience/AlgorithmsInComputerScience/HashPublicEdition2.lean/declarations/hash256.md) | 17 | `declaration-track:fccac812fda43e72aa2733e44e7a2a439278175ab3ea93ca84bcac8672667d4d` |
| 2 | `abbrev` | [Hash256.algorithm](../../../../../ComputerScience/AlgorithmsInComputerScience/HashPublicEdition2.lean/declarations/hash256-algorithm.md) | 18 | `declaration-track:042af00f372824259b07823f9c9f102045717e4b2fc0d2ebddd8212e50477e2d` |
| 3 | `abbrev` | [Hash256.hex](../../../../../ComputerScience/AlgorithmsInComputerScience/HashPublicEdition2.lean/declarations/hash256-hex.md) | 20 | `declaration-track:4c181668bf7cda332e16ed9160acf050cbcc3bdd814c783bf1375691da8dfb6c` |
| 4 | `abbrev` | [lowerHexAlphabet](../../../../../ComputerScience/AlgorithmsInComputerScience/HashPublicEdition2.lean/declarations/lowerhexalphabet.md) | 22 | `declaration-track:fadf97c7576f282afd07e4cdca403983ba2d8e32a4f1a9e7d32b609a65327147` |
| 5 | `abbrev` | [IsLowerHexDigit](../../../../../ComputerScience/AlgorithmsInComputerScience/HashPublicEdition2.lean/declarations/islowerhexdigit.md) | 23 | `declaration-track:03e595fc0386da4beb52c5d0b79fcbae9c655107791ed6027b0a81a93f0a2b27` |
| 6 | `abbrev` | [Hash256.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/HashPublicEdition2.lean/declarations/hash256-valid.md) | 24 | `declaration-track:d88efcb3d2cb4b3f20da73851fb56e701a9b7c19efb0405e8fa02936927d6caa` |
| 7 | `abbrev` | [verifyHash256](../../../../../ComputerScience/AlgorithmsInComputerScience/HashPublicEdition2.lean/declarations/verifyhash256.md) | 26 | `declaration-track:d03846b70123ffc7785738467233de5ff06ec4c7986cee2e2763fec48edab9f5` |
| 8 | `theorem` | [verifyHash256_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/HashPublicEdition2.lean/declarations/verifyhash256-sound.md) | 29 | `result-track:eefe182eb09fe1cacb4f6e618045b89127ab73d8d17e75f9781c40d49772ae96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=08e296a1470926ab83cdaecb9659997eb555cece4e89f64ded9283f370f20a77 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant461f6275f048a7eb8b0ce7c7c6f90049278da738fe3cc57dd017544a825f49bf.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant461f6275f048a7eb8b0ce7c7c6f90049278da738fe3cc57dd017544a825f49bf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
