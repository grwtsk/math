# Verification target: GRWTSK.Topology.GeneralTopology.Profinite.Variant2fd27ed4ca83d398c97218d270829f350a8bb19f412fd7f3c7f83da3f7ffa2b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84570ded902405cf49a43aa3f49b0fbf0e39081f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Profinite/Variant2fd27ed4ca83d398c97218d270829f350a8bb19f412fd7f3c7f83da3f7ffa2b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant2fd27ed4ca83d398c97218d270829f350a8bb19f412fd7f3c7f83da3f7ffa2b5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant2fd27ed4ca83d398c97218d270829f350a8bb19f412fd7f3c7f83da3f7ffa2b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84570ded902405cf49a43aa3f49b0fbf0e39081f`.

Source path: `GRWTSK/Topology/GeneralTopology/Profinite/Variant2fd27ed4ca83d398c97218d270829f350a8bb19f412fd7f3c7f83da3f7ffa2b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Profinite/Variant2fd27ed4ca83d398c97218d270829f350a8bb19f412fd7f3c7f83da3f7ffa2b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Separation.Regular` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.TotallyDisconnected` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [totallySeparatedSpace_of_t1_of_basis_clopen](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant2fd27ed4ca83d398c97218d270829f350a8bb19f412fd7f3c7f83da3f7ffa2b5.lean/declarations/totallyseparatedspace-of-t1-of-basis-clopen--8fe4f7b785b1a5be4460a2e7.md) | 23 | `result-track:8fe4f7b785b1a5be4460a2e7d6c3a925f11bfd7427a23222ef711a313e15af21` |
| 2 | `theorem` | [nhds_basis_clopen](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant2fd27ed4ca83d398c97218d270829f350a8bb19f412fd7f3c7f83da3f7ffa2b5.lean/declarations/nhds-basis-clopen--b0ccb4218af253a116adcf81.md) | 33 | `result-track:b0ccb4218af253a116adcf81216557c65f0dca9e7aa9c8a62afc051aaea0087e` |
| 3 | `theorem` | [isTopologicalBasis_isClopen](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant2fd27ed4ca83d398c97218d270829f350a8bb19f412fd7f3c7f83da3f7ffa2b5.lean/declarations/istopologicalbasis-isclopen--30ca620c7cb4dc6f5ee35728.md) | 56 | `result-track:30ca620c7cb4dc6f5ee35728683977d71cd4d4efe026c78c2324b2015850d248` |
| 4 | `theorem` | [compact_exists_isClopen_in_isOpen](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant2fd27ed4ca83d398c97218d270829f350a8bb19f412fd7f3c7f83da3f7ffa2b5.lean/declarations/compact-exists-isclopen-in-isopen--5578e1316c70a47cf234865f.md) | 66 | `result-track:5578e1316c70a47cf234865f93759a1f048c41091c9bfef636be62c17a5f41f7` |
| 5 | `theorem` | [loc_compact_Haus_tot_disc_of_zero_dim](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant2fd27ed4ca83d398c97218d270829f350a8bb19f412fd7f3c7f83da3f7ffa2b5.lean/declarations/loc-compact-haus-tot-disc-of-zero-dim--cf8beb12e081fde0e5d3339f.md) | 77 | `result-track:cf8beb12e081fde0e5d3339f05c6f7a1db47706fac8ca8f7eeffcd2371cea94a` |
| 6 | `theorem` | [loc_compact_t2_tot_disc_iff_tot_sep](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant2fd27ed4ca83d398c97218d270829f350a8bb19f412fd7f3c7f83da3f7ffa2b5.lean/declarations/loc-compact-t2-tot-disc-iff-tot-sep--4fe49ce774c6b7f1dd255bfe.md) | 108 | `result-track:4fe49ce774c6b7f1dd255bfec9634889a2d2061445c268c28fd54f307a8d4591` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant2fd27ed4ca83d398c97218d270829f350a8bb19f412fd7f3c7f83da3f7ffa2b5.lean/declarations/instance--04df37b8e1cf302b1b60e3a2.md) | 119 | `declaration-track:04df37b8e1cf302b1b60e3a2a7d9d3fbc8ef8465b438dd376986d8b6ffcf3e94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
