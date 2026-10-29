# Verification target: Fraisse Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f131506491354a2ce24d818796c3d7fda64197a",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Fraisse/Variantd35278c516bc2e2267be268726e33d23d9e4cbf1b208d7fd0cdf86c44d687778.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ModelTheory/FraisseNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ModelTheory/FraisseNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f131506491354a2ce24d818796c3d7fda64197a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Fraisse/Variantd35278c516bc2e2267be268726e33d23d9e4cbf1b208d7fd0cdf86c44d687778.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Fraisse/Variantd35278c516bc2e2267be268726e33d23d9e4cbf1b208d7fd0cdf86c44d687778.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.ModelTheory.FinitelyGenerated` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.DirectLimit` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Bundled` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [age](../../../../../MathematicalLogicAndFoundations/ModelTheory/FraisseNamespaced.lean/declarations/age.md) | 86 | `declaration-track:fafbac74c4b18f5bf39f3fd0dbcb4a48d06ea82f520805c6a66c56fc5c8c9763` |
| 2 | `def` | [Hereditary](../../../../../MathematicalLogicAndFoundations/ModelTheory/FraisseNamespaced.lean/declarations/hereditary.md) | 94 | `declaration-track:2aabad6b3129f0fc0cb4028ee3e334c8b0b9f41794cc9d1d92a3b9f22c1598bd` |
| 3 | `def` | [JointEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/FraisseNamespaced.lean/declarations/jointembedding.md) | 100 | `declaration-track:634164d8b04b12b484c22fe4a9615803fb5dd83abfd8dc3746ecfdcd6cc0bd2b` |
| 4 | `def` | [Amalgamation](../../../../../MathematicalLogicAndFoundations/ModelTheory/FraisseNamespaced.lean/declarations/amalgamation.md) | 107 | `declaration-track:bf160e7b49f77e2dc0cc647d3f4bace85ecc1384be2257a45974f5f656fb2916` |
| 5 | `class` | [IsFraisse](../../../../../MathematicalLogicAndFoundations/ModelTheory/FraisseNamespaced.lean/declarations/isfraisse-source-edition-2.md) | 115 | `declaration-track:d7815ccadb017fe5d68b062ae27abb1448a071a0f3cc593b3876dfa1a8b52b72` |
| 6 | `theorem` | [age.is_equiv_invariant](../../../../../MathematicalLogicAndFoundations/ModelTheory/FraisseNamespaced.lean/declarations/is-equiv-invariant.md) | 127 | `result-track:cbafb66a7b08d7b8975ba41062caf7edaceaee5216d89a207e2cf6f4422d83c4` |
| 7 | `theorem` | [Embedding.age_subset_age](../../../../../MathematicalLogicAndFoundations/ModelTheory/FraisseNamespaced.lean/declarations/embedding-age-subset-age.md) | 136 | `result-track:8b31ffeeee6c9bed3847c8d058f1392f1e590554089c6ee34203563b2d7d4283` |
| 8 | `theorem` | [Equiv.age_eq_age](../../../../../MathematicalLogicAndFoundations/ModelTheory/FraisseNamespaced.lean/declarations/equiv-age-eq-age.md) | 140 | `result-track:79bd761b70e6ea549ce1d19b397c1ec52faf775a480108aa5abeea1f180077f7` |
| 9 | `theorem` | [Structure.FG.mem_age_of_equiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/FraisseNamespaced.lean/declarations/structure-fg-mem-age-of-equiv.md) | 144 | `result-track:a145ea42f1516c9087701f477f9f51206227523ab660533749c031902cec2677` |
| 10 | `theorem` | [Hereditary.is_equiv_invariant_of_fG](../../../../../MathematicalLogicAndFoundations/ModelTheory/FraisseNamespaced.lean/declarations/is-equiv-invariant-of-fg.md) | 150 | `result-track:222f64a4c81816c6637f8e9eba16f5935c10396be6b471210e0676afd6a7030b` |
| 11 | `theorem` | [age.nonempty](../../../../../MathematicalLogicAndFoundations/ModelTheory/FraisseNamespaced.lean/declarations/age-nonempty.md) | 159 | `result-track:aab863ebddee9e25cb6045fce9f722016381416a825843c54d2ca55b32eb7fab` |
| 12 | `theorem` | [age.hereditary](../../../../../MathematicalLogicAndFoundations/ModelTheory/FraisseNamespaced.lean/declarations/age-hereditary.md) | 164 | `result-track:55469587b2898e3070f164159b5d8d3c1f7a1233eb5b2b9308c6bdc9cb2d4ff8` |
| 13 | `theorem` | [age.jointEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/FraisseNamespaced.lean/declarations/age-jointembedding.md) | 167 | `result-track:a2fa7f53918e75d4c6bf3326a9e0668f16a35ec086422e18abff4dc3e3f4af4f` |
| 14 | `theorem` | [age.countable_quotient](../../../../../MathematicalLogicAndFoundations/ModelTheory/FraisseNamespaced.lean/declarations/age-countable-quotient.md) | 177 | `result-track:219c3a46a9552b304cc58e74ea463914b3e7adfd4056ff50b93dad8e340df68f` |
| 15 | `theorem` | [age_directLimit](../../../../../MathematicalLogicAndFoundations/ModelTheory/FraisseNamespaced.lean/declarations/age-directlimit.md) | 195 | `result-track:f4c7ad33a40d6fe29502d2eb723d25ee9c596448ab026c9d0d041cb35ad5132d` |
| 16 | `theorem` | [exists_cg_is_age_of](../../../../../MathematicalLogicAndFoundations/ModelTheory/FraisseNamespaced.lean/declarations/exists-cg-is-age-of.md) | 220 | `result-track:a421a42af6529bcaaa296a2e1a8da98525ab2b572cec56240ed259f003b713e9` |
| 17 | `theorem` | [exists_countable_is_age_of_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/FraisseNamespaced.lean/declarations/exists-countable-is-age-of-iff.md) | 257 | `result-track:cb300f71885e27d1f7491f878f032cd845b1c3e1070aae479331afb72844100a` |
| 18 | `def` | [IsUltrahomogeneous](../../../../../MathematicalLogicAndFoundations/ModelTheory/FraisseNamespaced.lean/declarations/isultrahomogeneous.md) | 275 | `declaration-track:a8456899f46336a55f9b0768822f29e4265b65294406e43ef1b41b50f11a3e5f` |
| 19 | `structure` | [IsFraisseLimit](../../../../../MathematicalLogicAndFoundations/ModelTheory/FraisseNamespaced.lean/declarations/isfraisselimit.md) | 284 | `declaration-track:78c550104b86b1d5d7fddee3f6c6c08395b663ebcf9361be77fe883f79d86e69` |
| 20 | `theorem` | [IsUltrahomogeneous.amalgamation_age](../../../../../MathematicalLogicAndFoundations/ModelTheory/FraisseNamespaced.lean/declarations/isultrahomogeneous-amalgamation-age.md) | 291 | `result-track:09b42f089794ebf024ef3e1736617cf323c0b65a95b9a38a33c0ef63730e1441` |
| 21 | `theorem` | [IsUltrahomogeneous.age_isFraisse](../../../../../MathematicalLogicAndFoundations/ModelTheory/FraisseNamespaced.lean/declarations/isultrahomogeneous-age-isfraisse.md) | 313 | `result-track:c176f5f916bb1621797daa9468c2f91cec45764ce1f2f0a2a493d9adcdc1306b` |
| 22 | `theorem` | [isFraisse](../../../../../MathematicalLogicAndFoundations/ModelTheory/FraisseNamespaced.lean/declarations/isfraisse.md) | 322 | `result-track:af3220ff71a27868459d4016144c8b523abdf57a0cdf5333e6fd9ff827635fe9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=05ae9b9a9797f3dd7098d3b506266245e952078da5afdfdd71d099a2d9a65239 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Fraisse/Variantd35278c516bc2e2267be268726e33d23d9e4cbf1b208d7fd0cdf86c44d687778.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/Fraisse/Variantd35278c516bc2e2267be268726e33d23d9e4cbf1b208d7fd0cdf86c44d687778.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
