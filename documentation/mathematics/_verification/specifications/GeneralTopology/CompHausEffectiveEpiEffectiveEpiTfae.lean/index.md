# Verification target: Comp Haus Effective Epi Effective Epi Tfae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4103c153bfbad7e1d566c87618e61518f3872314",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/EffectiveEpi/Varianta376b9e5f514c24370466f78767f38c92fb7065bd6276dd5d06c2a44645eed5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/CompHausEffectiveEpiEffectiveEpiTfae.lean/index.md) · [Full source](../../../../GeneralTopology/CompHausEffectiveEpiEffectiveEpiTfae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4103c153bfbad7e1d566c87618e61518f3872314`.

Source path: `GRWTSK/Topology/GeneralTopology/EffectiveEpi/Varianta376b9e5f514c24370466f78767f38c92fb7065bd6276dd5d06c2a44645eed5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/EffectiveEpi/Varianta376b9e5f514c24370466f78767f38c92fb7065bd6276dd5d06c2a44645eed5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.CompHaus.Limits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHausLike.EffectiveEpi` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [effectiveEpi_tfae](../../../../GeneralTopology/CompHausEffectiveEpiEffectiveEpiTfae.lean/declarations/effectiveepi-tfae.md) | 35 | `result-track:3f32a30fafffac332e036eba52b415ef1276d0aafe625623098f9869250d7566` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/CompHausEffectiveEpiEffectiveEpiTfae.lean/declarations/instance.md) | 47 | `declaration-track:23df486a32a1296c113134ebd99da7fa39329d300f79ca09fd5b29d55a2ec62c` |
| 3 | `example` | [(anonymous)](../../../../GeneralTopology/CompHausEffectiveEpiEffectiveEpiTfae.lean/declarations/example.md) | 50 | `declaration-track:b82519b66a5f8c50aeae58b12f55f6bc64dd85225303eda325743454512f07db` |
| 4 | `theorem` | [effectiveEpiFamily_tfae](../../../../GeneralTopology/CompHausEffectiveEpiEffectiveEpiTfae.lean/declarations/effectiveepifamily-tfae.md) | 54 | `result-track:5066ffdadac8928a0ac571d66b99c98785b15b549af5731d4e2edc5d7a78bee5` |
| 5 | `theorem` | [effectiveEpiFamily_of_jointly_surjective](../../../../GeneralTopology/CompHausEffectiveEpiEffectiveEpiTfae.lean/declarations/effectiveepifamily-of-jointly-surjective.md) | 97 | `result-track:41b2e16b7b0844bbb395045bfadcbf868b67b6cb0034b9a62ac96b68bfb452c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e142510bfbaa09ddfb6c6144e09f717f759cbd873e093762172a3d32cf237fb2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/EffectiveEpi/Varianta376b9e5f514c24370466f78767f38c92fb7065bd6276dd5d06c2a44645eed5b.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/EffectiveEpi/Varianta376b9e5f514c24370466f78767f38c92fb7065bd6276dd5d06c2a44645eed5b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
