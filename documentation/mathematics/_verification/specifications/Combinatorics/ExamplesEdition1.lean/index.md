# Verification target: Examples Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82d769b180e9bf3fd4d00dd9657446c8a4af98e4",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Examples/Variant57c47303bd0b5ded25f60a21a3ddf58edc63bd614bddfc567edd618e59be33f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ExamplesEdition1.lean/index.md) · [Full source](../../../../Combinatorics/ExamplesEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82d769b180e9bf3fd4d00dd9657446c8a4af98e4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Examples/Variant57c47303bd0b5ded25f60a21a3ddf58edc63bd614bddfc567edd618e59be33f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Examples/Variant57c47303bd0b5ded25f60a21a3ddf58edc63bd614bddfc567edd618e59be33f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.WorldModel.Cech` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [emptyAssumptionContext](../../../../Combinatorics/ExamplesEdition1.lean/declarations/emptyassumptioncontext.md) | 16 | `declaration-track:687c61b42ea490e140288b20fd3019e731907dcd165ffafe5653e030d5315468` |
| 2 | `def` | [emptyTrustedBase](../../../../Combinatorics/ExamplesEdition1.lean/declarations/emptytrustedbase.md) | 27 | `declaration-track:77ecf7bf8409af2ed4d169a9a175bf8441565335d758adf87485bd84d53143d3` |
| 3 | `def` | [prototypeWorldModel](../../../../Combinatorics/ExamplesEdition1.lean/declarations/prototypeworldmodel.md) | 36 | `declaration-track:ab1a5c70704526692744cee2445fd20eafb1bbe348d27969eee6a351afbbbebf` |
| 4 | `inductive` | [PrototypeModelId](../../../../Combinatorics/ExamplesEdition1.lean/declarations/prototypemodelid-source-edition-2.md) | 63 | `declaration-track:880ad3006d880ac6abc3882ac77297d5bd47af6d2bf84b6efd4fb77df79e2915` |
| 5 | `def` | [prototypeModelId](../../../../Combinatorics/ExamplesEdition1.lean/declarations/prototypemodelid.md) | 69 | `declaration-track:181badd6323605cb119e37bf51c14255d4fa8b2e63e84b3102914288970d892d` |
| 6 | `def` | [prototypeVersion](../../../../Combinatorics/ExamplesEdition1.lean/declarations/prototypeversion.md) | 74 | `declaration-track:c2d7adcae95cf2858ed809583df632a216cc6495a71976f2c4387d6d08ab1668` |
| 7 | `def` | [prototypeDependencies](../../../../Combinatorics/ExamplesEdition1.lean/declarations/prototypedependencies.md) | 79 | `declaration-track:dfa9730cc70426881f707fb42342454cf4a9f2a36a5d5c990552bc6eab6945cf` |
| 8 | `def` | [prototypeRank](../../../../Combinatorics/ExamplesEdition1.lean/declarations/prototyperank.md) | 84 | `declaration-track:729422b6ea2bd82e43de5b788f961b4a37b07b00c7eeaf1a75f101c012754e26` |
| 9 | `theorem` | [prototype_dependency_rank_lt](../../../../Combinatorics/ExamplesEdition1.lean/declarations/prototype-dependency-rank-lt.md) | 89 | `result-track:7cde8d4c5cea6d894cb85663925d410139c8a51997f12cb4e7a5ae270d9ec401` |
| 10 | `abbrev` | [prototypeDependencyGraph](../../../../Combinatorics/ExamplesEdition1.lean/declarations/prototypedependencygraph.md) | 95 | `declaration-track:60c19e2c5a3ddd638ec328911d3664cb572c0a9f6ba0f05b28585a717c17df6f` |
| 11 | `theorem` | [prototypeVersion_injective](../../../../Combinatorics/ExamplesEdition1.lean/declarations/prototypeversion-injective.md) | 99 | `result-track:63d9485cc5650fa756496abebd3dae726b781837710687fbb8d3af4b305ce61f` |
| 12 | `abbrev` | [prototypeRegistry](../../../../Combinatorics/ExamplesEdition1.lean/declarations/prototyperegistry.md) | 105 | `declaration-track:2f01086c57afb249222bcf80554257b5ba0c6dd8ecd4fbb7164f0cdec18df3dc` |
| 13 | `def` | [prototypeRegion](../../../../Combinatorics/ExamplesEdition1.lean/declarations/prototyperegion.md) | 123 | `declaration-track:c29a5c85f2ded9476e9a773e4878f24d3edecee029bc2222335d05890a3d4b15` |
| 14 | `theorem` | [prototypeRegion_eq_univ](../../../../Combinatorics/ExamplesEdition1.lean/declarations/prototyperegion-eq-univ.md) | 131 | `result-track:e15fb3e7ac241f2c5a7c739934c53369670eef8fc55bc7cd9a17bf894c149bf7` |
| 15 | `theorem` | [prototypeRegistry_card](../../../../Combinatorics/ExamplesEdition1.lean/declarations/prototyperegistry-card.md) | 136 | `result-track:a1bea0c9258578d46c798ed53e98244833c50444572f8d447c24e22ea82a6437` |
| 16 | `def` | [obstructionCompletenessObligation](../../../../Combinatorics/ExamplesEdition1.lean/declarations/obstructioncompletenessobligation.md) | 142 | `declaration-track:45b5c945899c0943cdefe6ee34826aab6f2d601c846fdc27c1bdc976420ee76d` |
| 17 | `theorem` | [obstructionCompleteness_is_open](../../../../Combinatorics/ExamplesEdition1.lean/declarations/obstructioncompleteness-is-open.md) | 154 | `result-track:a162efbe0169999c43242c7226af6af5f5f4b360d4f91af3c827733a0d425824` |
| 18 | `def` | [boolExactTranslation](../../../../Combinatorics/ExamplesEdition1.lean/declarations/boolexacttranslation.md) | 159 | `declaration-track:d95ed374cdb3d652febb3fd10b5d3b71137d194152f6a3e29c3ee8aec73fadfe` |
| 19 | `def` | [boolFaithfulTranslation](../../../../Combinatorics/ExamplesEdition1.lean/declarations/boolfaithfultranslation.md) | 168 | `declaration-track:0d853c6bb6a9f91aad7124cd20545276bf914e9a57f097549a0ec53e6d066618` |
| 20 | `def` | [natSoundAbstraction](../../../../Combinatorics/ExamplesEdition1.lean/declarations/natsoundabstraction.md) | 192 | `declaration-track:eecb3d0de1c49114b21bc976c3f5b4feda8f1845bc3929ec669eb26f272badc6` |
| 21 | `def` | [boolExecutableRefinement](../../../../Combinatorics/ExamplesEdition1.lean/declarations/boolexecutablerefinement.md) | 216 | `declaration-track:924bbefdd23491bebf32235c278246fc95553bdc29fcaeb88c408f2ba4f724b3` |
| 22 | `theorem` | [noncommuting_bool_routes](../../../../Combinatorics/ExamplesEdition1.lean/declarations/noncommuting-bool-routes.md) | 226 | `result-track:7ed4c713b4234ca8e322bbcc1c181d6f192b1d8db4294370012b43fd81e06b1c` |
| 23 | `def` | [boolEqualitySite](../../../../Combinatorics/ExamplesEdition1.lean/declarations/boolequalitysite.md) | 231 | `declaration-track:8e35e5da5b0718cd697eb423e35e9bd9cad2433beabc104e471576799428ef90` |
| 24 | `def` | [constantBoolPresheaf](../../../../Combinatorics/ExamplesEdition1.lean/declarations/constantboolpresheaf.md) | 246 | `declaration-track:8bab29712460f155b943af9d125d83e2bbc7f91b59f9720dfc3e57c84bc8a34d` |
| 25 | `def` | [constantBoolDescent](../../../../Combinatorics/ExamplesEdition1.lean/declarations/constantbooldescent.md) | 253 | `declaration-track:f8a6f3c67db6309b83dd9a9dd8d587b8fe6b82855716598eb534e5f76439cff1` |
| 26 | `theorem` | [constantBoolFamily_glues](../../../../Combinatorics/ExamplesEdition1.lean/declarations/constantboolfamily-glues.md) | 264 | `result-track:89012c93642bfeac96ce02c5eb8444d8f2ec7064fa7b11e50b9979ef463383e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b869bb5d1ce954bb5f3519eedb9f0d16e7edced9226174aa734fb418ee9c2f51 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Examples/Variant57c47303bd0b5ded25f60a21a3ddf58edc63bd614bddfc567edd618e59be33f6.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Examples/Variant57c47303bd0b5ded25f60a21a3ddf58edc63bd614bddfc567edd618e59be33f6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
