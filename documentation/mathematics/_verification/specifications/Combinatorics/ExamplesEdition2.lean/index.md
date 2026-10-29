# Verification target: Examples Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd01c02726de9af22206d68c8a1943acfc7c20a6",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Examples/Variantaa3600fa8b3a970e96a9c8aae3ee6a59c9a9020187d0b811c2e0d4507adec8d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ExamplesEdition2.lean/index.md) · [Full source](../../../../Combinatorics/ExamplesEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd01c02726de9af22206d68c8a1943acfc7c20a6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Examples/Variantaa3600fa8b3a970e96a9c8aae3ee6a59c9a9020187d0b811c2e0d4507adec8d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Examples/Variantaa3600fa8b3a970e96a9c8aae3ee6a59c9a9020187d0b811c2e0d4507adec8d2.lean.json)

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
| 1 | `def` | [emptyAssumptionContext](../../../../Combinatorics/ExamplesEdition2.lean/declarations/emptyassumptioncontext.md) | 16 | `declaration-track:de6d26259fd86792615af9993c26277a948ed88bc1bf9c07fa01fecbc963ef03` |
| 2 | `def` | [emptyTrustedBase](../../../../Combinatorics/ExamplesEdition2.lean/declarations/emptytrustedbase.md) | 27 | `declaration-track:287c00500e210e7b3af8507eace987732d30e96a7d30ade67fa431f7e0c43145` |
| 3 | `def` | [prototypeWorldModel](../../../../Combinatorics/ExamplesEdition2.lean/declarations/prototypeworldmodel.md) | 36 | `declaration-track:041adf2c6553c05a2c625f47f6efbd407969c0daf0064986970375d9053f8d9b` |
| 4 | `inductive` | [PrototypeModelId](../../../../Combinatorics/ExamplesEdition2.lean/declarations/prototypemodelid-source-edition-2.md) | 63 | `declaration-track:0e84b8bea3125bc733d27cf6cc57017730f6b5f59914e049ce111a406bc1ca80` |
| 5 | `def` | [prototypeModelId](../../../../Combinatorics/ExamplesEdition2.lean/declarations/prototypemodelid.md) | 69 | `declaration-track:0d9c0975b0036b4839dcde76953e52decfc921ef664a0dbb801651eaa074f992` |
| 6 | `def` | [prototypeVersion](../../../../Combinatorics/ExamplesEdition2.lean/declarations/prototypeversion.md) | 74 | `declaration-track:a985b016b36f9baa986c97680c5375bab25f4e9c6bd9c3ef23918bfe656b78d3` |
| 7 | `def` | [prototypeDependencies](../../../../Combinatorics/ExamplesEdition2.lean/declarations/prototypedependencies.md) | 79 | `declaration-track:4d33a3778d3a96c5e0bd34771aba0b6841bca6dae868255033aabe9cc8d96676` |
| 8 | `def` | [prototypeRank](../../../../Combinatorics/ExamplesEdition2.lean/declarations/prototyperank.md) | 84 | `declaration-track:1d2ac0ebe956bb6001a420ed37d02e91dd15a3f2cf28a3e199226f2d10d441f7` |
| 9 | `theorem` | [prototype_dependency_rank_lt](../../../../Combinatorics/ExamplesEdition2.lean/declarations/prototype-dependency-rank-lt.md) | 89 | `result-track:36490f7f435c44a94ae353862247e92b8e21ee004121af3f6378a175a2775faa` |
| 10 | `abbrev` | [prototypeDependencyGraph](../../../../Combinatorics/ExamplesEdition2.lean/declarations/prototypedependencygraph.md) | 95 | `declaration-track:931f65cc23d8e03551d4951cf50d0211b1d08142558febebf147043d7157ed8b` |
| 11 | `theorem` | [prototypeVersion_injective](../../../../Combinatorics/ExamplesEdition2.lean/declarations/prototypeversion-injective.md) | 99 | `result-track:eed697aff0fb49a663151ae86f88a50e872ec2ad5b6c97de70e9d72b1a6194af` |
| 12 | `abbrev` | [prototypeRegistry](../../../../Combinatorics/ExamplesEdition2.lean/declarations/prototyperegistry.md) | 105 | `declaration-track:3d1e292948374c61e07b430523185063a306955a0acae59370048214ea50922f` |
| 13 | `def` | [prototypeRegion](../../../../Combinatorics/ExamplesEdition2.lean/declarations/prototyperegion.md) | 123 | `declaration-track:9601406bb4703e5baa0756e8d2f7d04bde58aa46e7694296c38141e3f5871814` |
| 14 | `theorem` | [prototypeRegion_eq_univ](../../../../Combinatorics/ExamplesEdition2.lean/declarations/prototyperegion-eq-univ.md) | 131 | `result-track:e923d149a6e82951d4d355385ce23bdb5261e5fdb420b29c4fab9f208d5b2398` |
| 15 | `theorem` | [prototypeRegistry_card](../../../../Combinatorics/ExamplesEdition2.lean/declarations/prototyperegistry-card.md) | 136 | `result-track:be226cd35d9f7adb68e242eeb76dc9a342c8e172c994ab8fb903b584c23772a9` |
| 16 | `def` | [obstructionCompletenessObligation](../../../../Combinatorics/ExamplesEdition2.lean/declarations/obstructioncompletenessobligation.md) | 142 | `declaration-track:36ed0948d4e9bb745c7db824c54f4d69ceac298c28a9792088a3c6fedcc48b2c` |
| 17 | `theorem` | [obstructionCompleteness_is_open](../../../../Combinatorics/ExamplesEdition2.lean/declarations/obstructioncompleteness-is-open.md) | 154 | `result-track:b3e7e778ca200ac839090d541230ee78f6a4c06f2b12ebf54db4b532ed60151d` |
| 18 | `def` | [boolExactTranslation](../../../../Combinatorics/ExamplesEdition2.lean/declarations/boolexacttranslation.md) | 159 | `declaration-track:fccddeecfeb2fff81d0e2776fe3d4beb48bf178b4238e8a4a1e244cd37b7a30b` |
| 19 | `def` | [boolFaithfulTranslation](../../../../Combinatorics/ExamplesEdition2.lean/declarations/boolfaithfultranslation.md) | 168 | `declaration-track:12bc791fb430ebd109e76c5146a660762d2ee925fcd88196771fe5bbacd63411` |
| 20 | `def` | [natSoundAbstraction](../../../../Combinatorics/ExamplesEdition2.lean/declarations/natsoundabstraction.md) | 192 | `declaration-track:02325ecda758f7726bf013d1de755f77bf1363fedc0e9a1185752c50a51748fa` |
| 21 | `def` | [boolExecutableRefinement](../../../../Combinatorics/ExamplesEdition2.lean/declarations/boolexecutablerefinement.md) | 216 | `declaration-track:9a77bc3f9c8aca0bcab782aad202c40ad8e0bfa11abd0a7ab4e54eb2e09dd303` |
| 22 | `theorem` | [noncommuting_bool_routes](../../../../Combinatorics/ExamplesEdition2.lean/declarations/noncommuting-bool-routes.md) | 226 | `result-track:5be16bdd557cf90a343576581ff536e48aceb94abe8e0db4c94678b5cacb19be` |
| 23 | `def` | [boolEqualitySite](../../../../Combinatorics/ExamplesEdition2.lean/declarations/boolequalitysite.md) | 231 | `declaration-track:d078796208d6a51e884eee5258e37fbc13d9b2a1dcee2377e5bf6331aa6de051` |
| 24 | `def` | [constantBoolPresheaf](../../../../Combinatorics/ExamplesEdition2.lean/declarations/constantboolpresheaf.md) | 246 | `declaration-track:4553d1a70c3b2d70c9292bbae389f6271db588dfc8b816b0a696ff294097d745` |
| 25 | `def` | [constantBoolDescent](../../../../Combinatorics/ExamplesEdition2.lean/declarations/constantbooldescent.md) | 253 | `declaration-track:dcb5dafb1b0c9e286eca9db367f86685a0364b04aa59e8d9a039e8b9d3cc90fd` |
| 26 | `theorem` | [constantBoolFamily_glues](../../../../Combinatorics/ExamplesEdition2.lean/declarations/constantboolfamily-glues.md) | 264 | `result-track:f6709b0a449c832fd8ffbe084c5b6b17d78ed2bbf3cf808c473cf6c3a2675fd7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8a688493c30ddbd7222651a88c66358247a184723aa2b1ad9904ee1c78fa286b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Examples/Variantaa3600fa8b3a970e96a9c8aae3ee6a59c9a9020187d0b811c2e0d4507adec8d2.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Examples/Variantaa3600fa8b3a970e96a9c8aae3ee6a59c9a9020187d0b811c2e0d4507adec8d2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
