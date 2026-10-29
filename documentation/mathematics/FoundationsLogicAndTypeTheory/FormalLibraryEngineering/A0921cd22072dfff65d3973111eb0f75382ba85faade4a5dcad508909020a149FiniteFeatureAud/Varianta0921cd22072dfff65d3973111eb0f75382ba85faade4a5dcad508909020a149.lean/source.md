# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.A0921cd22072dfff65d3973111eb0f75382ba85faade4a5dcad508909020a149FiniteFeatureAud.Varianta0921cd22072dfff65d3973111eb0f75382ba85faade4a5dcad508909020a149

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ff0964c4535500b7f70e7ea474b776eabb3354d` · SHA-256 `a0921cd22072dfff65d3973111eb0f75382ba85faade4a5dcad508909020a149`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.FiniteFeatureGeometry

#print FormalResearch.PositiveAtlas.FiniteFeatureGeometry.coordinateForm
#print axioms FormalResearch.PositiveAtlas.FiniteFeatureGeometry.coordinateForm

#print FormalResearch.PositiveAtlas.FiniteFeatureGeometry.coordinateForm_isNull_iff
#print axioms FormalResearch.PositiveAtlas.FiniteFeatureGeometry.coordinateForm_isNull_iff

#print FormalResearch.PositiveAtlas.FiniteFeatureGeometry.featureForm
#print axioms FormalResearch.PositiveAtlas.FiniteFeatureGeometry.featureForm

#print FormalResearch.PositiveAtlas.FiniteFeatureGeometry.featureForm_apply
#print axioms FormalResearch.PositiveAtlas.FiniteFeatureGeometry.featureForm_apply

#print FormalResearch.PositiveAtlas.FiniteFeatureGeometry.featureForm_isNull_iff
#print axioms FormalResearch.PositiveAtlas.FiniteFeatureGeometry.featureForm_isNull_iff

#print FormalResearch.PositiveAtlas.FiniteFeatureGeometry.featureForm_null_orthogonal
#print axioms FormalResearch.PositiveAtlas.FiniteFeatureGeometry.featureForm_null_orthogonal

#print FormalResearch.PositiveAtlas.FiniteFeatureGeometry.NullQuotient
#print axioms FormalResearch.PositiveAtlas.FiniteFeatureGeometry.NullQuotient

#print FormalResearch.PositiveAtlas.FiniteFeatureGeometry.quotientFeature
#print axioms FormalResearch.PositiveAtlas.FiniteFeatureGeometry.quotientFeature

#print FormalResearch.PositiveAtlas.FiniteFeatureGeometry.quotientFeature_mk
#print axioms FormalResearch.PositiveAtlas.FiniteFeatureGeometry.quotientFeature_mk

#print FormalResearch.PositiveAtlas.FiniteFeatureGeometry.quotientFeature_injective
#print axioms FormalResearch.PositiveAtlas.FiniteFeatureGeometry.quotientFeature_injective

#print FormalResearch.PositiveAtlas.FiniteFeatureGeometry.quotient_mk_eq_iff
#print axioms FormalResearch.PositiveAtlas.FiniteFeatureGeometry.quotient_mk_eq_iff

#print FormalResearch.PositiveAtlas.FiniteFeatureGeometry.ProjectiveFeature
#print axioms FormalResearch.PositiveAtlas.FiniteFeatureGeometry.ProjectiveFeature

#print FormalResearch.PositiveAtlas.FiniteFeatureGeometry.projective_mk_eq_iff
#print axioms FormalResearch.PositiveAtlas.FiniteFeatureGeometry.projective_mk_eq_iff

#print FormalResearch.PositiveAtlas.FiniteFeatureGeometry.quotientForm
#print axioms FormalResearch.PositiveAtlas.FiniteFeatureGeometry.quotientForm

#print FormalResearch.PositiveAtlas.FiniteFeatureGeometry.quotientForm_mk
#print axioms FormalResearch.PositiveAtlas.FiniteFeatureGeometry.quotientForm_mk

#print FormalResearch.PositiveAtlas.FiniteFeatureGeometry.quotientForm_isNull_iff
#print axioms FormalResearch.PositiveAtlas.FiniteFeatureGeometry.quotientForm_isNull_iff

#print FormalResearch.PositiveAtlas.FiniteFeatureGeometry.quotientForm_visible_iff
#print axioms FormalResearch.PositiveAtlas.FiniteFeatureGeometry.quotientForm_visible_iff

#print FormalResearch.PositiveAtlas.FiniteFeatureGeometry.projective_rep_visible
#print axioms FormalResearch.PositiveAtlas.FiniteFeatureGeometry.projective_rep_visible

#print FormalResearch.PositiveAtlas.FiniteFeatureGeometry.quotientForm_smul_self
#print axioms FormalResearch.PositiveAtlas.FiniteFeatureGeometry.quotientForm_smul_self

#print FormalResearch.PositiveAtlas.FiniteFeatureGeometry.quotient_mk_eq_iff_isNull_sub
#print axioms FormalResearch.PositiveAtlas.FiniteFeatureGeometry.quotient_mk_eq_iff_isNull_sub

#print FormalResearch.PositiveAtlas.FiniteFeatureGeometry.firstCoordinateFeature
#print axioms FormalResearch.PositiveAtlas.FiniteFeatureGeometry.firstCoordinateFeature

#print FormalResearch.PositiveAtlas.FiniteFeatureGeometry.firstCoordinateFeature_null_and_visible
#print axioms FormalResearch.PositiveAtlas.FiniteFeatureGeometry.firstCoordinateFeature_null_and_visible

#print FormalResearch.PositiveAtlas.FiniteFeatureGeometry.firstCoordinateFeature_quotient_example
#print axioms FormalResearch.PositiveAtlas.FiniteFeatureGeometry.firstCoordinateFeature_quotient_example

#print FormalResearch.PositiveAtlas.FiniteFeatureGeometry.zero_weight_nonzero_null
#print axioms FormalResearch.PositiveAtlas.FiniteFeatureGeometry.zero_weight_nonzero_null
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4dc9237739204c786779c1bf98f69d4d6fc9f1b034ad1268bded5371ec50753c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A0921cd22072dfff65d3973111eb0f75382ba85faade4a5dcad508909020a149FiniteFeatureAud/Varianta0921cd22072dfff65d3973111eb0f75382ba85faade4a5dcad508909020a149.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
