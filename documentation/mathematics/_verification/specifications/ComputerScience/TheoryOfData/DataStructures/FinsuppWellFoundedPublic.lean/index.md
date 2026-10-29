# Verification target: Finsupp Well Founded Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15e1f981e4a976376ccef0a80f13687f2242b6b1",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant996bd60c36fa90e371a4120a1d36aa94191dba9571f439974ace1269f0e34e96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15e1f981e4a976376ccef0a80f13687f2242b6b1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant996bd60c36fa90e371a4120a1d36aa94191dba9571f439974ace1269f0e34e96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant996bd60c36fa90e371a4120a1d36aa94191dba9571f439974ace1269f0e34e96.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Lex.acc](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedPublic.lean/declarations/lex-acc.md) | 38 | `result-track:c8175249d4613b04de4bfac6dc1f69ee2dbeb7be9eba7282eed9187dbc551b45` |
| 2 | `theorem` | [Lex.wellFounded](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedPublic.lean/declarations/lex-wellfounded-source-edition-2.md) | 46 | `result-track:cd0301f28af3049f5d4238506d52b01386f9c0d95e2403109634e36c4fbc6d83` |
| 3 | `theorem` | [Lex.wellFounded'](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedPublic.lean/declarations/lex-wellfounded.md) | 50 | `result-track:9a6c142aa09272b964697e5474d08cde398c9850f65b08ac0480e4681549d7c7` |
| 4 | `instance` | [Lex.wellFoundedLT](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedPublic.lean/declarations/lex-wellfoundedlt.md) | 55 | `declaration-track:5d06da0b1fce18e70e0b671f9e4f9d69d5befdaba04ab8030efc405cb1d1deaf` |
| 5 | `instance` | [Colex.wellFoundedLT](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedPublic.lean/declarations/colex-wellfoundedlt.md) | 60 | `declaration-track:1934465884b0ef724cefe83933b5f176aed98f6883eaf343d571e8d597267211` |
| 6 | `theorem` | [Lex.wellFounded_of_finite](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedPublic.lean/declarations/lex-wellfounded-of-finite.md) | 67 | `result-track:50009b8acb63504086cb1668e9720d7d38883f0b023b29848ad6dd7c495826fc` |
| 7 | `theorem` | [Lex.wellFoundedLT_of_finite](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedPublic.lean/declarations/lex-wellfoundedlt-of-finite.md) | 71 | `result-track:b54f395275f9475a5c21e2920054f7e34e6f7e0d2eceb2dfc1ae737b4d590f25` |
| 8 | `theorem` | [Colex.wellFoundedLT_of_finite](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedPublic.lean/declarations/colex-wellfoundedlt-of-finite.md) | 75 | `result-track:915343f1e871a4c5deb42e39ba4ea422c1987bbd2644b6c2311b5a9e6f71ff4a` |
| 9 | `theorem` | [wellFoundedLT](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedPublic.lean/declarations/wellfoundedlt-source-edition-2.md) | 79 | `result-track:d8625526e5ea8dffc112c958e3bc44eb91efade56a6888cf871231de954cbc61` |
| 10 | `instance` | [wellFoundedLT'](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedPublic.lean/declarations/wellfoundedlt.md) | 83 | `declaration-track:1b77eec2d46e238cfa37890261cc9477e5f76756874487d9c521138c7b46027b` |
| 11 | `instance` | [wellFoundedLT_of_finite](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedPublic.lean/declarations/wellfoundedlt-of-finite.md) | 88 | `declaration-track:b2fb4c7efae90358302d460a34116185ab54905a301c278ef4226d11c7a1c910` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce62c6d5e29da553d716886ec66f98824723293b53845c2bffe44dedd4146f2c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant996bd60c36fa90e371a4120a1d36aa94191dba9571f439974ace1269f0e34e96.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant996bd60c36fa90e371a4120a1d36aa94191dba9571f439974ace1269f0e34e96.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
