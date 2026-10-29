# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Density.Variant1e20d2beb25dce96b50d09bb5611c04ca05a089075869b5aef79bb2bd8c4b79c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "646c0ee6780ffc005f5293dcdec6666ee2fde709",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Density/Variant1e20d2beb25dce96b50d09bb5611c04ca05a089075869b5aef79bb2bd8c4b79c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CombinatoricsAndDiscreteMathematics/Density/Variant1e20d2beb25dce96b50d09bb5611c04ca05a089075869b5aef79bb2bd8c4b79c.lean/index.md) · [Full source](../../../../../CombinatoricsAndDiscreteMathematics/Density/Variant1e20d2beb25dce96b50d09bb5611c04ca05a089075869b5aef79bb2bd8c4b79c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `646c0ee6780ffc005f5293dcdec6666ee2fde709`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Density/Variant1e20d2beb25dce96b50d09bb5611c04ca05a089075869b5aef79bb2bd8c4b79c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Density/Variant1e20d2beb25dce96b50d09bb5611c04ca05a089075869b5aef79bb2bd8c4b79c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pointwise.Finset.Scalar` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Pointwise.Finset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Density` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [dens_inv](../../../../../CombinatoricsAndDiscreteMathematics/Density/Variant1e20d2beb25dce96b50d09bb5611c04ca05a089075869b5aef79bb2bd8c4b79c.lean/declarations/dens-inv--76698ab59a8b66a5ccd705fc.md) | 23 | `result-track:76698ab59a8b66a5ccd705fc32718c4ce8b19b95ff1ce677faca924bd52ac5fe` |
| 2 | `lemma` | [dens_smul_finset](../../../../../CombinatoricsAndDiscreteMathematics/Density/Variant1e20d2beb25dce96b50d09bb5611c04ca05a089075869b5aef79bb2bd8c4b79c.lean/declarations/dens-smul-finset--990645797aa39b4167929196.md) | 27 | `result-track:990645797aa39b4167929196d9925df173910b70aa23abdbfdf15cc66099ff3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a3a473fe1a6de50cbedf44ecf2e9e338c4ea3958664526c3283c50cfab685dba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Density/Variant1e20d2beb25dce96b50d09bb5611c04ca05a089075869b5aef79bb2bd8c4b79c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Density/Variant1e20d2beb25dce96b50d09bb5611c04ca05a089075869b5aef79bb2bd8c4b79c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
