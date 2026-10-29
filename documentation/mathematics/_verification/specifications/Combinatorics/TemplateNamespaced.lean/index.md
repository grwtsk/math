# Verification target: Template Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56dc80634c78262541c373f9ae45f166f767ad06",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Template/Variant2d66129782e3383384130e4a2e35f7abefe4af3e6b66a04c15dd129169cb150a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/TemplateNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/TemplateNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56dc80634c78262541c373f9ae45f166f767ad06`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Template/Variant2d66129782e3383384130e4a2e35f7abefe4af3e6b66a04c15dd129169cb150a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Template/Variant2d66129782e3383384130e4a2e35f7abefe4af3e6b66a04c15dd129169cb150a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.AbelReynolds.Boundary` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.AbelReynolds.Tally` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ValueSort](../../../../Combinatorics/TemplateNamespaced.lean/declarations/valuesort.md) | 23 | `declaration-track:02be2f5d2ada977952c786b6becfb69d82ed0fd750549dbb40ace145b961f002` |
| 2 | `inductive` | [DependencyPartition](../../../../Combinatorics/TemplateNamespaced.lean/declarations/dependencypartition.md) | 31 | `declaration-track:ddcedcf998c3a207ea15a28afe9ac16111e81404021ac9edaab435a609b8cf1e` |
| 3 | `structure` | [Symbol](../../../../Combinatorics/TemplateNamespaced.lean/declarations/symbol.md) | 39 | `declaration-track:ca42310e993ea13e1261e7bb62ee0948d9abd462e94b435e5e096757acd3005e` |
| 4 | `inductive` | [Term](../../../../Combinatorics/TemplateNamespaced.lean/declarations/term.md) | 45 | `declaration-track:0ef74fb19b7694f99b07fc43d21799d83eb8db90bf1cf6dd917a08f6c03e72d9` |
| 5 | `inductive` | [Value](../../../../Combinatorics/TemplateNamespaced.lean/declarations/value.md) | 59 | `declaration-track:b5ada96b6bfd5e44524e07528649db66bdee95c937d0551adeaa88786baad4a9` |
| 6 | `def` | [Value.sort](../../../../Combinatorics/TemplateNamespaced.lean/declarations/value-sort.md) | 67 | `declaration-track:4691967a630d359dce1c3125ef46afc6c7407ac1306f5d49ed1d5ae015bfc771` |
| 7 | `abbrev` | [Environment](../../../../Combinatorics/TemplateNamespaced.lean/declarations/environment.md) | 74 | `declaration-track:fa6d0fb036c11e89319b07e5c8ceb8731f9263056d111a79cc13030178e0602a` |
| 8 | `def` | [Environment.lookup](../../../../Combinatorics/TemplateNamespaced.lean/declarations/environment-lookup.md) | 76 | `declaration-track:7db7d80f6e645044483ea401f13e47413c8e437f6a91837ad74f32b815f6e472` |
| 9 | `def` | [Term.infer](../../../../Combinatorics/TemplateNamespaced.lean/declarations/term-infer.md) | 84 | `declaration-track:568e2c6329849f9bc0752f5713498b21f873b1e3e21c42ed2b92563f03ecaebd` |
| 10 | `def` | [Term.freeVariables](../../../../Combinatorics/TemplateNamespaced.lean/declarations/term-freevariables.md) | 107 | `declaration-track:28b0798d9a3a1f8ddeab2c2067c88fd4d24c6fb1f679cde29b6d58d38e8d5532` |
| 11 | `inductive` | [EvalResult](../../../../Combinatorics/TemplateNamespaced.lean/declarations/evalresult.md) | 123 | `declaration-track:f8cad7c1afe9bff7f670bf8dfab3f368b3c66049a5dc6867242ed71f8e5609ab` |
| 12 | `inductive` | [PrimeHoleValidation](../../../../Combinatorics/TemplateNamespaced.lean/declarations/primeholevalidation.md) | 129 | `declaration-track:d991ce17a0bfe803285cddead650d3f454a9a25ed6d6bd5d1bb0742d1d25d2a2` |
| 13 | `structure` | [PrimeHole](../../../../Combinatorics/TemplateNamespaced.lean/declarations/primehole.md) | 136 | `declaration-track:f09e6352e58fc5ee5e575ef37ceb8c97e7befbdb68db24822005f622d65003ce` |
| 14 | `inductive` | [TemplateFieldScope](../../../../Combinatorics/TemplateNamespaced.lean/declarations/templatefieldscope.md) | 147 | `declaration-track:1143b944fad2536b0f0ec8ce20e0fb44d379b2886f7f989ae0bc8cdba0696dc7` |
| 15 | `def` | [Term.eval](../../../../Combinatorics/TemplateNamespaced.lean/declarations/term-eval.md) | 153 | `declaration-track:b41c90205ab8f55d5cfa231d29aacbb7555988d32bd9d18c5c6ba36a28fb8832` |
| 16 | `structure` | [TemplateField](../../../../Combinatorics/TemplateNamespaced.lean/declarations/templatefield.md) | 194 | `declaration-track:902b05e639c17a0ae538cc40182f33ebf1cef1a337a980061eb25e90edbd35aa` |
| 17 | `def` | [TemplateField.ClassReusable](../../../../Combinatorics/TemplateNamespaced.lean/declarations/templatefield-classreusable.md) | 218 | `declaration-track:4738062b7464b2a6ef317e89b3e3e3021c906e7780fb999037322b01958a026e` |
| 18 | `theorem` | [TemplateField.classReusable_has_no_primeDependency](../../../../Combinatorics/TemplateNamespaced.lean/declarations/templatefield-classreusable-has-no-primedependency.md) | 222 | `result-track:1a24d9365e22cfc4f5d9fdfaabf01e8f9573498c028ce3bbdc5444eb60b87c3c` |
| 19 | `structure` | [Template](../../../../Combinatorics/TemplateNamespaced.lean/declarations/template.md) | 239 | `declaration-track:3abbb0a8bfb49971d88d95526c13d2e0775a759479c73da146e05d083533e01c` |
| 20 | `def` | [Template.classFields](../../../../Combinatorics/TemplateNamespaced.lean/declarations/template-classfields.md) | 242 | `declaration-track:6e233036ef42d4ff198add065ef4193b3e676d35a646417fa47dda3dd08f39a7` |
| 21 | `def` | [Template.primeFields](../../../../Combinatorics/TemplateNamespaced.lean/declarations/template-primefields.md) | 246 | `declaration-track:dc30ceef7f68a848ba68e0becbb10d3b773e4dcc8a6a2d0af2c3a70f3965c26d` |
| 22 | `def` | [Template.runtimeFields](../../../../Combinatorics/TemplateNamespaced.lean/declarations/template-runtimefields.md) | 250 | `declaration-track:e0a5b17978d75e5fb8decf0cafa6b862bebe434115e1ac9ee0a4a71164896108` |
| 23 | `theorem` | [Template.class_prime_disjoint](../../../../Combinatorics/TemplateNamespaced.lean/declarations/template-class-prime-disjoint.md) | 254 | `result-track:fd7316058f4d67c98295a559b9dfe2bee88446fee57ca5edfd786352dba648b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=129188e771ba542d514434ade271913b95a913325cc61cdebf3ee73ac58a7c6d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Template/Variant2d66129782e3383384130e4a2e35f7abefe4af3e6b66a04c15dd129169cb150a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Template/Variant2d66129782e3383384130e4a2e35f7abefe4af3e6b66a04c15dd129169cb150a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
