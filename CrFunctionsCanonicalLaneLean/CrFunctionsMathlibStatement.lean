import CrFunctionsCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace CrFunctionsCanonicalLaneLean

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "CrFunctions",
  theoremObject := "Cr Functions",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

theorem theorem_specific_endgame_pilot_checked :
    (∀ A : AdmissibleClass, ConstrainedCrClosure A) := by
  intro A
  exact constrained_cr_endgame A

end CrFunctionsCanonicalLaneLean
end HautevilleHouse