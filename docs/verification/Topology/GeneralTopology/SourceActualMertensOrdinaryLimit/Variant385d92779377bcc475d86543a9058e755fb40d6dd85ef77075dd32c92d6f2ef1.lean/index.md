# Verification target: GRWTSK.Topology.GeneralTopology.SourceActualMertensOrdinaryLimit.Variant385d92779377bcc475d86543a9058e755fb40d6dd85ef77075dd32c92d6f2ef1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c437547c7b01ca48a36fa098d46351ad747e5e96",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SourceActualMertensOrdinaryLimit/Variant385d92779377bcc475d86543a9058e755fb40d6dd85ef77075dd32c92d6f2ef1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SourceActualMertensOrdinaryLimit/Variant385d92779377bcc475d86543a9058e755fb40d6dd85ef77075dd32c92d6f2ef1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SourceActualMertensOrdinaryLimit/Variant385d92779377bcc475d86543a9058e755fb40d6dd85ef77075dd32c92d6f2ef1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c437547c7b01ca48a36fa098d46351ad747e5e96`.

Source path: `GRWTSK/Topology/GeneralTopology/SourceActualMertensOrdinaryLimit/Variant385d92779377bcc475d86543a9058e755fb40d6dd85ef77075dd32c92d6f2ef1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SourceActualMertensOrdinaryLimit/Variant385d92779377bcc475d86543a9058e755fb40d6dd85ef77075dd32c92d6f2ef1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualPsiErrorTimeNormalization` — import line 1; external provider; requires a separately pinned dependency.
- `SourceActualPsiPntTimeDecay` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualPntMertensLimit](../../../../../mathematics/Topology/GeneralTopology/SourceActualMertensOrdinaryLimit/Variant385d92779377bcc475d86543a9058e755fb40d6dd85ef77075dd32c92d6f2ef1.lean/declarations/actualpntmertenslimit--a50308578fa2f4ad752d28b3.md) | 23 | `declaration-track:a50308578fa2f4ad752d28b3b77aee98eb4341ff5b98bcd485770e66e668498e` |
| 2 | `theorem` | [actualRelativePsiTimeError_eq_pnt_error](../../../../../mathematics/Topology/GeneralTopology/SourceActualMertensOrdinaryLimit/Variant385d92779377bcc475d86543a9058e755fb40d6dd85ef77075dd32c92d6f2ef1.lean/declarations/actualrelativepsitimeerror-eq-pnt-error--99a35cd2ef5da218c7b2975a.md) | 27 | `result-track:99a35cd2ef5da218c7b2975aead37166784faf1011386d1774f1de80ff7e479c` |
| 3 | `theorem` | [mangoldtLogError_eq_pnt_relative_primitive](../../../../../mathematics/Topology/GeneralTopology/SourceActualMertensOrdinaryLimit/Variant385d92779377bcc475d86543a9058e755fb40d6dd85ef77075dd32c92d6f2ef1.lean/declarations/mangoldtlogerror-eq-pnt-relative-primitive--7edab2316d6e8e559bec52f5.md) | 33 | `result-track:7edab2316d6e8e559bec52f5a90523f670768f8e0762ee931a9e33080877954f` |
| 4 | `theorem` | [actualRelativePsiTimePrimitive_tendsto](../../../../../mathematics/Topology/GeneralTopology/SourceActualMertensOrdinaryLimit/Variant385d92779377bcc475d86543a9058e755fb40d6dd85ef77075dd32c92d6f2ef1.lean/declarations/actualrelativepsitimeprimitive-tendsto--022e61ccfbc52963caa166c2.md) | 40 | `result-track:022e61ccfbc52963caa166c2e52a6fd598b50862593f2cb77f2a041a445c3acc` |
| 5 | `theorem` | [mangoldtLogError_tendsto_actualPntMertensLimit](../../../../../mathematics/Topology/GeneralTopology/SourceActualMertensOrdinaryLimit/Variant385d92779377bcc475d86543a9058e755fb40d6dd85ef77075dd32c92d6f2ef1.lean/declarations/mangoldtlogerror-tendsto-actualpntmertenslimit--b2ae99598ac4465d32691b1a.md) | 49 | `result-track:b2ae99598ac4465d32691b1ad6a3992fcbb4759bb41c98da94fee16813e1c983` |
| 6 | `theorem` | [actualCenteredMangoldtLogError_tendsto](../../../../../mathematics/Topology/GeneralTopology/SourceActualMertensOrdinaryLimit/Variant385d92779377bcc475d86543a9058e755fb40d6dd85ef77075dd32c92d6f2ef1.lean/declarations/actualcenteredmangoldtlogerror-tendsto--53d83405a56faafc656685b1.md) | 62 | `result-track:53d83405a56faafc656685b1866c12dba108587d0bd59a589b4aff25dcd22f8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
