# Verification target: Boolean Generators Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bdf3e68c9a5beae2dec990db2eced790e496da23",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant342c7a6796c8ccacdb519e2e053443c3903b25e85b387492158aa9e4bddb8b7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanGeneratorsPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanGeneratorsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bdf3e68c9a5beae2dec990db2eced790e496da23`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant342c7a6796c8ccacdb519e2e053443c3903b25e85b387492158aa9e4bddb8b7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant342c7a6796c8ccacdb519e2e053443c3903b25e85b387492158aa9e4bddb8b7c.lean.json)

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
| 1 | `structure` | [BooleanGenerators](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanGeneratorsPublic.lean/declarations/booleangenerators.md) | 57 | `declaration-track:f3a590df3ab3f6f47cfea3724eb5b98afa3312c203c5d6765d92cf204c53d0ef` |
| 2 | `lemma` | [mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanGeneratorsPublic.lean/declarations/mono.md) | 70 | `result-track:ce81288f0a5d6d11be095ba80eb1f1ce7bf319b5188071d3c5f4f544a8e620ac` |
| 3 | `lemma` | [atomistic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanGeneratorsPublic.lean/declarations/atomistic.md) | 76 | `result-track:540f78a9903990d8b137032f819765c782997773e934880a0631df79567d9f06` |
| 4 | `lemma` | [isAtomistic_of_sSup_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanGeneratorsPublic.lean/declarations/isatomistic-of-ssup-eq-top.md) | 105 | `result-track:64a8fa6bb4ab718fdd2269d0e34f813a2a6d4c8437a38d662cb42d6dd1d4b740` |
| 5 | `lemma` | [mem_of_isAtom_of_le_sSup_atoms](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanGeneratorsPublic.lean/declarations/mem-of-isatom-of-le-ssup-atoms.md) | 111 | `result-track:0d8004c128ae708c65945d4bd53b2286575b4a4d7c1cf2ecd81547f82bd8d0b2` |
| 6 | `lemma` | [sSup_inter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanGeneratorsPublic.lean/declarations/ssup-inter.md) | 122 | `result-track:8f0ad27aed48be2daf2b474452cccb1ca58bb865f153828c8cd1036c2101966e` |
| 7 | `def` | [distribLatticeOfSSupEqTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanGeneratorsPublic.lean/declarations/distriblatticeofssupeqtop.md) | 143 | `declaration-track:d5bffb3b274b36471896a5bce0d27a9adf11beb5babb608d23081478a3994c6f` |
| 8 | `lemma` | [complementedLattice_of_sSup_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanGeneratorsPublic.lean/declarations/complementedlattice-of-ssup-eq-top.md) | 159 | `result-track:994e1ce74a90908b1412b8062c8ef91f89deb38732b3ab57040852fc2bf638ff` |
| 9 | `def` | [booleanAlgebraOfSSupEqTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanGeneratorsPublic.lean/declarations/booleanalgebraofssupeqtop.md) | 168 | `declaration-track:3c7d5497a20ac57f6cf5ab77d5f3ae58dd4a3467cd4599be04b1fa966acaa0fa` |
| 10 | `lemma` | [sSup_le_sSup_iff_of_atoms](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanGeneratorsPublic.lean/declarations/ssup-le-ssup-iff-of-atoms.md) | 176 | `result-track:5cd9cb1361b3a856b17f3afd5a4cda16836e26e173f23503c06955641b8cb31a` |
| 11 | `lemma` | [eq_atoms_of_sSup_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanGeneratorsPublic.lean/declarations/eq-atoms-of-ssup-eq-top.md) | 183 | `result-track:d2abee66c5c54d7249ceab1e0d1331ccf34f6efa79c030d8c5a7051736ebda7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1193f71b7a07c3ca01c947513d3898498a9a0c33a034397651b6f24021582330 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant342c7a6796c8ccacdb519e2e053443c3903b25e85b387492158aa9e4bddb8b7c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant342c7a6796c8ccacdb519e2e053443c3903b25e85b387492158aa9e4bddb8b7c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
