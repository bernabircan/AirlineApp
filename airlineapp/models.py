from django.db import models

# Create your models here.


class AirlineCompany(models.Model):
    company_id = models.IntegerField(db_column='Company_id', primary_key=True)  # Field name made lowercase.
    number_of_flight = models.IntegerField(db_column='Number_of_flight')  # Field name made lowercase.
    company_name = models.CharField(db_column='Company_name', max_length=20, blank=True, null=True)  # Field name made lowercase.
    company_adress = models.CharField(db_column='Company_adress', max_length=100, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'airline_company'
    def __str__(self):
        return self.company_name


class Airplane(models.Model):
    airplane_id = models.CharField(db_column='Airplane_id', primary_key=True, max_length=3)  # Field name made lowercase.
    total_number_of_seats = models.IntegerField(db_column='Total_number_of_seats')  # Field name made lowercase.
    airplane_type = models.ForeignKey('AirplaneType', models.DO_NOTHING, db_column='Airplane_type')  # Field name made lowercase.
    company = models.ForeignKey('AirplaneCompany', models.DO_NOTHING, db_column='Company_id')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'airplane'


class AirplaneCompany(models.Model):
    company_id = models.IntegerField(db_column='Company_id', primary_key=True)  # Field name made lowercase.
    number_of_airplane = models.IntegerField(db_column='Number_of_airplane')  # Field name made lowercase.
    company_name = models.CharField(db_column='Company_name', max_length=20, blank=True, null=True)  # Field name made lowercase.
    company_adress = models.CharField(db_column='Company_adress', max_length=100, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'airplane_company'


class AirplaneType(models.Model):
    airplane_type_name = models.CharField(db_column='Airplane_type_name', primary_key=True, max_length=10)  # Field name made lowercase.
    max_seats = models.IntegerField(db_column='Max_seats')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'airplane_type'


class Airport(models.Model):
    airport_code = models.CharField(db_column='Airport_code', primary_key=True, max_length=3)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=50)  # Field name made lowercase.
    city = models.CharField(db_column='City', max_length=50)  # Field name made lowercase.
    state = models.CharField(db_column='State', max_length=50)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'airport'


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class CanLand(models.Model):
    airplane_type_name = models.OneToOneField(AirplaneType, models.DO_NOTHING, db_column='Airplane_type_name', primary_key=True)  # Field name made lowercase.
    airport_code = models.ForeignKey(Airport, models.DO_NOTHING, db_column='Airport_code')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'can_land'
        unique_together = (('airplane_type_name', 'airport_code'),)


class Customer(models.Model):
    name = models.CharField(db_column='Name', max_length=15)  # Field name made lowercase.
    phone = models.CharField(db_column='Phone', max_length=15)  # Field name made lowercase.
    e_mail = models.CharField(db_column='E-mail', max_length=100, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    country = models.CharField(db_column='Country', max_length=10)  # Field name made lowercase.
    passport_number = models.CharField(db_column='Passport_number', primary_key=True, max_length=7)  # Field name made lowercase.
    adress = models.CharField(db_column='Adress', max_length=100, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'customer'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Fare(models.Model):
    flight_number = models.OneToOneField('Flight', models.DO_NOTHING, db_column='Flight_number', primary_key=True)  # Field name made lowercase.
    fare_code = models.CharField(db_column='Fare_Code', max_length=1)  # Field name made lowercase.
    amount = models.DecimalField(db_column='Amount', max_digits=10, decimal_places=2)  # Field name made lowercase.
    restrictions = models.CharField(db_column='Restrictions', max_length=45, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'fare'
        unique_together = (('flight_number', 'fare_code'),)


class Ffc(models.Model):
    flight_number = models.OneToOneField('Seat', models.DO_NOTHING, db_column='Flight_number', primary_key=True,related_name='%(class)s_requests_created1')  # Field name made lowercase.
    leg_number = models.ForeignKey('Seat', models.DO_NOTHING, db_column='Leg_number',related_name='%(class)s_requests_created2')  # Field name made lowercase.
    date = models.ForeignKey('Seat', models.DO_NOTHING, db_column='Date',related_name='%(class)s_requests_created3')  # Field name made lowercase.
    seat_number = models.ForeignKey('Seat', models.DO_NOTHING, db_column='Seat_number',related_name='%(class)s_requests_created4')  # Field name made lowercase.
    passport_number = models.ForeignKey(Customer, models.DO_NOTHING, db_column='Passport_number')  # Field name made lowercase.
    mil = models.IntegerField(db_column='Mil')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ffc'
        unique_together = (('flight_number', 'leg_number', 'date', 'seat_number'),)


class Flight(models.Model):
    flight_number = models.CharField(db_column='Flight_number', primary_key=True, max_length=3)  # Field name made lowercase.
    airline = models.ForeignKey(AirlineCompany, models.DO_NOTHING, db_column='Airline_id', blank=True, null=True)  # Field name made lowercase.
    weekdays = models.CharField(db_column='Weekdays', max_length=10, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'flight'


class FlightLeg(models.Model):
    flight_number = models.OneToOneField(Flight, models.DO_NOTHING, db_column='Flight_number', primary_key=True)  # Field name made lowercase.
    leg_number = models.CharField(db_column='Leg_number', max_length=3)  # Field name made lowercase.
    sdeparture_airport_code = models.ForeignKey(Airport, models.DO_NOTHING, db_column='Sdeparture_airport_code',related_name='%(class)s_requests_created1')  # Field name made lowercase.
    sarrival_airport_code = models.ForeignKey(Airport, models.DO_NOTHING, db_column='Sarrival_airport_code',related_name='%(class)s_requests_created2')  # Field name made lowercase.
    scheduled_departure_time = models.TimeField(db_column='Scheduled_departure_time', blank=True, null=True)  # Field name made lowercase.
    scheduled_arrival_time = models.TimeField(db_column='Scheduled_arrival_time', blank=True, null=True)  # Field name made lowercase.
    leg_mil = models.IntegerField(db_column='Leg_mil')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'flight_leg'
        unique_together = (('flight_number', 'leg_number'),)


class LegInstance(models.Model):
    flight_number = models.OneToOneField(FlightLeg, models.DO_NOTHING, db_column='Flight_number', primary_key=True)  # Field name made lowercase.
    leg_number = models.ForeignKey(FlightLeg, models.DO_NOTHING, db_column='Leg_number',related_name='%(class)s_requests_created1')  # Field name made lowercase.
    date = models.DateField(db_column='Date')  # Field name made lowercase.
    number_of_avaible_seats = models.IntegerField(db_column='Number_of_avaible_seats', blank=True, null=True)  # Field name made lowercase.
    airplane = models.ForeignKey(Airplane, models.DO_NOTHING, db_column='Airplane_id', blank=True, null=True)  # Field name made lowercase.
    departure_airport_code = models.ForeignKey(Airport, models.DO_NOTHING, db_column='Departure_airport_code', blank=True, null=True,related_name='%(class)s_requests_created2')  # Field name made lowercase.
    arrival_airport_code = models.ForeignKey(Airport, models.DO_NOTHING, db_column='Arrival_airport_code', blank=True, null=True,related_name='%(class)s_requests_created3')  # Field name made lowercase.
    departure_time = models.TimeField(db_column='Departure_time')  # Field name made lowercase.
    arrival_time = models.TimeField(db_column='Arrival_time')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'leg_instance'
        unique_together = (('flight_number', 'leg_number', 'date'),)


class Reward(models.Model):
    passport_number = models.OneToOneField(Customer, models.DO_NOTHING, db_column='Passport_number', primary_key=True)  # Field name made lowercase.
    mil = models.IntegerField(db_column='Mil')  # Field name made lowercase.
    discount = models.IntegerField(db_column='Discount')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'reward'


class Seat(models.Model):
    flight_number = models.OneToOneField(LegInstance, models.DO_NOTHING, db_column='Flight_number', primary_key=True)  # Field name made lowercase.
    leg_number = models.ForeignKey(LegInstance, models.DO_NOTHING, db_column='Leg_number',related_name='%(class)s_requests_created1')  # Field name made lowercase.
    date = models.ForeignKey(LegInstance, models.DO_NOTHING, db_column='Date',related_name='%(class)s_requests_created2')  # Field name made lowercase.
    seat_number = models.CharField(db_column='Seat_number', max_length=4)  # Field name made lowercase.
    passport_number = models.ForeignKey(Customer, models.DO_NOTHING, db_column='Passport_number', blank=True, null=True)  # Field name made lowercase.
    checked = models.CharField(db_column='Checked', max_length=3)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'seat'
        unique_together = (('flight_number', 'leg_number', 'date', 'seat_number'),)
