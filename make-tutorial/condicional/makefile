var = super
void =

all:
ifeq '$(var)' 'super'
	echo "Primera es igual"
else
	echo "Primera no es igual"
endif

ifeq ($(var), super)
	echo "Segunda es igual"
else
	echo "Segunda no es igual"
endif

ifeq ($(void), )
	echo "Tercer es igual"
else
	echo "Tercera no es igual"
endif

ifeq ($(strip $(void)),)
	echo "Cuarta es igual"
else
	echo "Cuarta no es igual"
endif
