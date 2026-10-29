# Verification target: Source Mangoldt Prime Disclosure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "506e265c8fbf4284fb96c1f3ea5227b45f45a025",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceMangoldtPrimeDisclosure/Variant0c7743a1e35d51facf8e034ae2777fe258d748f135868f53ab7af02f65b5d237.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/SourceMangoldtPrimeDisclosure.lean/index.md) · [Full source](../../../../Combinatorics/SourceMangoldtPrimeDisclosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `506e265c8fbf4284fb96c1f3ea5227b45f45a025`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SourceMangoldtPrimeDisclosure/Variant0c7743a1e35d51facf8e034ae2777fe258d748f135868f53ab7af02f65b5d237.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SourceMangoldtPrimeDisclosure/Variant0c7743a1e35d51facf8e034ae2777fe258d748f135868f53ab7af02f65b5d237.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourcePrimeDisclosureActual` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [disclosedMangoldtRow](../../../../Combinatorics/SourceMangoldtPrimeDisclosure.lean/declarations/disclosedmangoldtrow.md) | 22 | `declaration-track:250e189dd46498aa2db4fc49fc7dd2cf663e50fa355946d07f8773aa933b4e77` |
| 2 | `def` | [freshMangoldtRow](../../../../Combinatorics/SourceMangoldtPrimeDisclosure.lean/declarations/freshmangoldtrow.md) | 26 | `declaration-track:3d0f4afd019c88ab6cf45eb93ad77f3224cfd7d19fb71edc243f3748beeb1b62` |
| 3 | `def` | [freshPowerInventory](../../../../Combinatorics/SourceMangoldtPrimeDisclosure.lean/declarations/freshpowerinventory.md) | 30 | `declaration-track:0d3107522da6d9d08d45c65607aafef29ead4f05d2cc00fc20bd384e707aa211` |
| 4 | `theorem` | [disclosedMangoldtRow_insert](../../../../Combinatorics/SourceMangoldtPrimeDisclosure.lean/declarations/disclosedmangoldtrow-insert.md) | 33 | `result-track:57d8405e2baad05e339ecd0b89be5334b46b29af2ab142596605f468d58c2f2d` |
| 5 | `theorem` | [freshMangoldtRow_eq_exact_power_weight](../../../../Combinatorics/SourceMangoldtPrimeDisclosure.lean/declarations/freshmangoldtrow-eq-exact-power-weight.md) | 43 | `result-track:4af1b1b5e0f6bf24eed3ce3e362659be0c78ec05afe241d8401fab70f9af0c21` |
| 6 | `theorem` | [mem_freshPowerInventory_iff](../../../../Combinatorics/SourceMangoldtPrimeDisclosure.lean/declarations/mem-freshpowerinventory-iff.md) | 53 | `result-track:871342182f224bd463cf6f927eac5806fdd03aa3842b7511729f14787f26b205` |
| 7 | `theorem` | [freshMangoldtRow_at_prime_power](../../../../Combinatorics/SourceMangoldtPrimeDisclosure.lean/declarations/freshmangoldtrow-at-prime-power.md) | 71 | `result-track:bae19dce3b6ba7554c939a4167ba08ebfb90d137ea197c8870263ea2f19c72b5` |
| 8 | `theorem` | [fresh_profile_eq_complete_power_sum](../../../../Combinatorics/SourceMangoldtPrimeDisclosure.lean/declarations/fresh-profile-eq-complete-power-sum.md) | 78 | `result-track:9bf89be01a3890413879cd6cfa9d3e85e60fd5fea3afdc7b1c156d1013fd6d4e` |
| 9 | `theorem` | [disclosedMangoldtRow_eq_actual_on_long](../../../../Combinatorics/SourceMangoldtPrimeDisclosure.lean/declarations/disclosedmangoldtrow-eq-actual-on-long.md) | 91 | `result-track:1b3913277349fc40597b9c2935af22886df61849fa25cc7e251d1b8594c6ac02` |
| 10 | `theorem` | [disclosed_profile_eq_actual_mangoldtAt](../../../../Combinatorics/SourceMangoldtPrimeDisclosure.lean/declarations/disclosed-profile-eq-actual-mangoldtat.md) | 103 | `result-track:1694c75789bc552d8aa5dec37f9bda4dbffb8e20640b52a3b9e9c59eead095e8` |
| 11 | `def` | [disclosedBetaRow](../../../../Combinatorics/SourceMangoldtPrimeDisclosure.lean/declarations/disclosedbetarow.md) | 114 | `declaration-track:a0e223859970aad8093c168e1b6dbd8d53e0014da3154d5fc98d8d0972d269e9` |
| 12 | `def` | [freshBetaRow](../../../../Combinatorics/SourceMangoldtPrimeDisclosure.lean/declarations/freshbetarow.md) | 118 | `declaration-track:f02da36233eaa2ee75d95ff4a3f93f7f07d96dd9d97dff677111d4a0bd9c1696` |
| 13 | `theorem` | [disclosedBetaRow_insert](../../../../Combinatorics/SourceMangoldtPrimeDisclosure.lean/declarations/disclosedbetarow-insert.md) | 121 | `result-track:cf9f5b62ca2fc3addd4113cbbb2e98bd8bc461c4e2169554358bf1168cd954aa` |
| 14 | `def` | [disclosedReadoutAt](../../../../Combinatorics/SourceMangoldtPrimeDisclosure.lean/declarations/disclosedreadoutat.md) | 131 | `declaration-track:e5e01d34d3733b54c6fe2b7fc27c1ec077e1954bb58e7275e05f739171d16446` |
| 15 | `theorem` | [disclosedReadoutAt_fresh_prime](../../../../Combinatorics/SourceMangoldtPrimeDisclosure.lean/declarations/disclosedreadoutat-fresh-prime.md) | 136 | `result-track:8587da515e574055696921efb176ccbd5b06e35b3e30d78bbd0080ac3cebdd76` |
| 16 | `theorem` | [compensatedReadout_congr_on](../../../../Combinatorics/SourceMangoldtPrimeDisclosure.lean/declarations/compensatedreadout-congr-on.md) | 150 | `result-track:8d3ce1ab64ed3497f51bc4568f7dd67ce99a62178793e81b1324e6d4c7c245d5` |
| 17 | `theorem` | [disclosedReadoutAt_eq_actual](../../../../Combinatorics/SourceMangoldtPrimeDisclosure.lean/declarations/disclosedreadoutat-eq-actual.md) | 168 | `result-track:62dbae0cc902b566cfaf016182c230fe4dd2bfc695c75a9b0cd801f2e1d65d61` |
| 18 | `theorem` | [actual_readoutAt_fresh_prime](../../../../Combinatorics/SourceMangoldtPrimeDisclosure.lean/declarations/actual-readoutat-fresh-prime.md) | 184 | `result-track:8801f0645cfa3bf8f01872352f13ae96afe5f60880a413616a23e70b04f8d501` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d85fa739cdd012813600b686610f1fc47954769216e58e86c339db3451d4c0f2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/SourceMangoldtPrimeDisclosure/Variant0c7743a1e35d51facf8e034ae2777fe258d748f135868f53ab7af02f65b5d237.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/SourceMangoldtPrimeDisclosure/Variant0c7743a1e35d51facf8e034ae2777fe258d748f135868f53ab7af02f65b5d237.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
