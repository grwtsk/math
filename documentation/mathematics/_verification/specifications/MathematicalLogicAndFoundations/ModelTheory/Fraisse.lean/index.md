# Verification target: Fraisse

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8e3fcc7367b5d0bc110619e94f41b09e17d4800",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Fraisse/Variant5b542eb35e8b65261372f753fe83cce2f685304c509c410a0e08af546bf34302.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ModelTheory/Fraisse.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ModelTheory/Fraisse.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8e3fcc7367b5d0bc110619e94f41b09e17d4800`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Fraisse/Variant5b542eb35e8b65261372f753fe83cce2f685304c509c410a0e08af546bf34302.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Fraisse/Variant5b542eb35e8b65261372f753fe83cce2f685304c509c410a0e08af546bf34302.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.ModelTheory.FinitelyGenerated` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.DirectLimit` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Bundled` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [age](../../../../../MathematicalLogicAndFoundations/ModelTheory/Fraisse.lean/declarations/age.md) | 78 | `declaration-track:b6ce73b6814eabc1868c328bccebbfbfcfb1e9a20a4575ef3a2b6d2de8464ec6` |
| 2 | `def` | [Hereditary](../../../../../MathematicalLogicAndFoundations/ModelTheory/Fraisse.lean/declarations/hereditary.md) | 86 | `declaration-track:c021465321bf98ed1ec4daacc65f36d56637ccbd1a299ba82d9b7c026f5c7ca1` |
| 3 | `def` | [JointEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/Fraisse.lean/declarations/jointembedding.md) | 92 | `declaration-track:b858fe25d452b790d10d3e3ae22cc3c6e380d960cabff9abdbdb0a3668e1243a` |
| 4 | `def` | [Amalgamation](../../../../../MathematicalLogicAndFoundations/ModelTheory/Fraisse.lean/declarations/amalgamation.md) | 99 | `declaration-track:9f45d9f83b0c2d61776901b3f3e6d72a39023d344d33dcb668fd5429403efe34` |
| 5 | `class` | [IsFraisse](../../../../../MathematicalLogicAndFoundations/ModelTheory/Fraisse.lean/declarations/isfraisse.md) | 107 | `declaration-track:6c84aa9fde428ae1b5189fe17ced7d080356b73a8ceff58be90d357e7498f0d0` |
| 6 | `theorem` | [age.is_equiv_invariant](../../../../../MathematicalLogicAndFoundations/ModelTheory/Fraisse.lean/declarations/is-equiv-invariant.md) | 119 | `result-track:3e5c02213b72be1ec71a3848e3d88defb0c0fa1c89c341f25eb0e48b4456d4f0` |
| 7 | `theorem` | [Embedding.age_subset_age](../../../../../MathematicalLogicAndFoundations/ModelTheory/Fraisse.lean/declarations/embedding-age-subset-age.md) | 128 | `result-track:25c57a93192be7ad8878116266d595200fd0bfb89f34706692f384e8a340ce11` |
| 8 | `theorem` | [Equiv.age_eq_age](../../../../../MathematicalLogicAndFoundations/ModelTheory/Fraisse.lean/declarations/equiv-age-eq-age.md) | 132 | `result-track:3630af5a9d46b411b36d0cc682a3d3a279db9207cafa62c288a713de90e4c59e` |
| 9 | `theorem` | [Structure.FG.mem_age_of_equiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/Fraisse.lean/declarations/structure-fg-mem-age-of-equiv.md) | 136 | `result-track:c53606380e4439c021da26c08b9049ead7b90a2aa1b6b223d4972a67f24a114a` |
| 10 | `theorem` | [Hereditary.is_equiv_invariant_of_fG](../../../../../MathematicalLogicAndFoundations/ModelTheory/Fraisse.lean/declarations/is-equiv-invariant-of-fg.md) | 142 | `result-track:2d1fef18272b96354e4530258d5e43cb9a66e8a845e91433cbe4d896e2e223d6` |
| 11 | `theorem` | [age.nonempty](../../../../../MathematicalLogicAndFoundations/ModelTheory/Fraisse.lean/declarations/age-nonempty.md) | 151 | `result-track:ae07f31341032f0071238937c233f86897b6b1c52c2970a17cf92e0ea103d715` |
| 12 | `theorem` | [age.hereditary](../../../../../MathematicalLogicAndFoundations/ModelTheory/Fraisse.lean/declarations/age-hereditary.md) | 156 | `result-track:5cc1729e268cb230f0ebcd7d8bfbab17bbc45b5b8bc876e7e3dfd3b34013111a` |
| 13 | `theorem` | [age.jointEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/Fraisse.lean/declarations/age-jointembedding.md) | 159 | `result-track:cc03ad7d9fff9d4c836586616055c78c2ea59948871ebe109cda551f4f8a8e53` |
| 14 | `theorem` | [age.countable_quotient](../../../../../MathematicalLogicAndFoundations/ModelTheory/Fraisse.lean/declarations/age-countable-quotient.md) | 169 | `result-track:42504a3b86a872e1bba34c919102bff298a4119b561b5723e1b8a0260399816e` |
| 15 | `theorem` | [age_directLimit](../../../../../MathematicalLogicAndFoundations/ModelTheory/Fraisse.lean/declarations/age-directlimit.md) | 187 | `result-track:fe5d3011054bd95c938c7149fc1917819a184ff5ce479c5cf6b5b7a6a1c98f87` |
| 16 | `theorem` | [exists_cg_is_age_of](../../../../../MathematicalLogicAndFoundations/ModelTheory/Fraisse.lean/declarations/exists-cg-is-age-of.md) | 212 | `result-track:5e176e400062e7efda155158a26ae82cd50c6d883367e4fdf388f81d7cf7d3c4` |
| 17 | `theorem` | [exists_countable_is_age_of_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/Fraisse.lean/declarations/exists-countable-is-age-of-iff.md) | 249 | `result-track:692f5e8c398dbebed2ff7571fd8bfdc6691c7ab6d52e33ee969fd11e4f162472` |
| 18 | `def` | [IsUltrahomogeneous](../../../../../MathematicalLogicAndFoundations/ModelTheory/Fraisse.lean/declarations/isultrahomogeneous.md) | 267 | `declaration-track:f39c3b92de4eabb254770fbb73b4a295d0798860051e0ac97846b1540f0dcc52` |
| 19 | `structure` | [IsFraisseLimit](../../../../../MathematicalLogicAndFoundations/ModelTheory/Fraisse.lean/declarations/isfraisselimit.md) | 276 | `declaration-track:32ed25133658d2c7b0f583ccb342963eef0e131a3f97842e91e1b2ee0108a001` |
| 20 | `theorem` | [IsUltrahomogeneous.amalgamation_age](../../../../../MathematicalLogicAndFoundations/ModelTheory/Fraisse.lean/declarations/isultrahomogeneous-amalgamation-age.md) | 283 | `result-track:a676991c7a27e32d9667413d5c0409adb32a9a68eafe9663beaac943545877f1` |
| 21 | `theorem` | [IsUltrahomogeneous.age_isFraisse](../../../../../MathematicalLogicAndFoundations/ModelTheory/Fraisse.lean/declarations/isultrahomogeneous-age-isfraisse.md) | 305 | `result-track:6d085172983a31ad7d2ea0a6db9e635179e04744c408b4dc19681a4f7a4501b1` |
| 22 | `theorem` | [isFraisse](../../../../../MathematicalLogicAndFoundations/ModelTheory/Fraisse.lean/declarations/isfraisse-source-edition-2.md) | 314 | `result-track:9cd9bd70501e4059647d48379f89ca7036b0333e983264babd31ea9192275ac9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bb59a467b99e8594835196a4ae1a6417a9a53a0074d0f432cccba67b4ac8e74c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Fraisse/Variant5b542eb35e8b65261372f753fe83cce2f685304c509c410a0e08af546bf34302.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/Fraisse/Variant5b542eb35e8b65261372f753fe83cce2f685304c509c410a0e08af546bf34302.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
