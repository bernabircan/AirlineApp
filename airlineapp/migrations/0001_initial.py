# Generated by Django 3.1.5 on 2021-02-01 10:52

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='AirlineCompany',
            fields=[
                ('company_id', models.IntegerField(db_column='Company_id', primary_key=True, serialize=False)),
                ('number_of_flight', models.IntegerField(db_column='Number_of_flight')),
                ('company_name', models.CharField(blank=True, db_column='Company_name', max_length=20, null=True)),
                ('company_adress', models.CharField(blank=True, db_column='Company_adress', max_length=100, null=True)),
            ],
            options={
                'db_table': 'airline_company',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Airplane',
            fields=[
                ('airplane_id', models.CharField(db_column='Airplane_id', max_length=3, primary_key=True, serialize=False)),
                ('total_number_of_seats', models.IntegerField(db_column='Total_number_of_seats')),
            ],
            options={
                'db_table': 'airplane',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AirplaneCompany',
            fields=[
                ('company_id', models.IntegerField(db_column='Company_id', primary_key=True, serialize=False)),
                ('number_of_airplane', models.IntegerField(db_column='Number_of_airplane')),
                ('company_name', models.CharField(blank=True, db_column='Company_name', max_length=20, null=True)),
                ('company_adress', models.CharField(blank=True, db_column='Company_adress', max_length=100, null=True)),
            ],
            options={
                'db_table': 'airplane_company',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AirplaneType',
            fields=[
                ('airplane_type_name', models.CharField(db_column='Airplane_type_name', max_length=10, primary_key=True, serialize=False)),
                ('max_seats', models.IntegerField(db_column='Max_seats')),
            ],
            options={
                'db_table': 'airplane_type',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Airport',
            fields=[
                ('airport_code', models.CharField(db_column='Airport_code', max_length=3, primary_key=True, serialize=False)),
                ('name', models.CharField(db_column='Name', max_length=50)),
                ('city', models.CharField(db_column='City', max_length=50)),
                ('state', models.CharField(db_column='State', max_length=50)),
            ],
            options={
                'db_table': 'airport',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthGroup',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=150, unique=True)),
            ],
            options={
                'db_table': 'auth_group',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthGroupPermissions',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
            options={
                'db_table': 'auth_group_permissions',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthPermission',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('codename', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'auth_permission',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthUser',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('password', models.CharField(max_length=128)),
                ('last_login', models.DateTimeField(blank=True, null=True)),
                ('is_superuser', models.IntegerField()),
                ('username', models.CharField(max_length=150, unique=True)),
                ('first_name', models.CharField(max_length=150)),
                ('last_name', models.CharField(max_length=150)),
                ('email', models.CharField(max_length=254)),
                ('is_staff', models.IntegerField()),
                ('is_active', models.IntegerField()),
                ('date_joined', models.DateTimeField()),
            ],
            options={
                'db_table': 'auth_user',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthUserGroups',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
            options={
                'db_table': 'auth_user_groups',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthUserUserPermissions',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
            options={
                'db_table': 'auth_user_user_permissions',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Customer',
            fields=[
                ('name', models.CharField(db_column='Name', max_length=15)),
                ('phone', models.CharField(db_column='Phone', max_length=15)),
                ('e_mail', models.CharField(blank=True, db_column='E-mail', max_length=100, null=True)),
                ('country', models.CharField(db_column='Country', max_length=10)),
                ('passport_number', models.CharField(db_column='Passport_number', max_length=7, primary_key=True, serialize=False)),
                ('adress', models.CharField(blank=True, db_column='Adress', max_length=100, null=True)),
            ],
            options={
                'db_table': 'customer',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='DjangoAdminLog',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('action_time', models.DateTimeField()),
                ('object_id', models.TextField(blank=True, null=True)),
                ('object_repr', models.CharField(max_length=200)),
                ('action_flag', models.PositiveSmallIntegerField()),
                ('change_message', models.TextField()),
            ],
            options={
                'db_table': 'django_admin_log',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='DjangoContentType',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('app_label', models.CharField(max_length=100)),
                ('model', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'django_content_type',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='DjangoMigrations',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('app', models.CharField(max_length=255)),
                ('name', models.CharField(max_length=255)),
                ('applied', models.DateTimeField()),
            ],
            options={
                'db_table': 'django_migrations',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='DjangoSession',
            fields=[
                ('session_key', models.CharField(max_length=40, primary_key=True, serialize=False)),
                ('session_data', models.TextField()),
                ('expire_date', models.DateTimeField()),
            ],
            options={
                'db_table': 'django_session',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Flight',
            fields=[
                ('flight_number', models.CharField(db_column='Flight_number', max_length=3, primary_key=True, serialize=False)),
                ('weekdays', models.CharField(blank=True, db_column='Weekdays', max_length=10, null=True)),
            ],
            options={
                'db_table': 'flight',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='CanLand',
            fields=[
                ('airplane_type_name', models.OneToOneField(db_column='Airplane_type_name', on_delete=django.db.models.deletion.DO_NOTHING, primary_key=True, serialize=False, to='airlineapp.airplanetype')),
            ],
            options={
                'db_table': 'can_land',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Fare',
            fields=[
                ('flight_number', models.OneToOneField(db_column='Flight_number', on_delete=django.db.models.deletion.DO_NOTHING, primary_key=True, serialize=False, to='airlineapp.flight')),
                ('fare_code', models.CharField(db_column='Fare_Code', max_length=1)),
                ('amount', models.DecimalField(db_column='Amount', decimal_places=2, max_digits=10)),
                ('restrictions', models.CharField(blank=True, db_column='Restrictions', max_length=45, null=True)),
            ],
            options={
                'db_table': 'fare',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='FlightLeg',
            fields=[
                ('flight_number', models.OneToOneField(db_column='Flight_number', on_delete=django.db.models.deletion.DO_NOTHING, primary_key=True, serialize=False, to='airlineapp.flight')),
                ('leg_number', models.CharField(db_column='Leg_number', max_length=3)),
                ('scheduled_departure_time', models.TimeField(blank=True, db_column='Scheduled_departure_time', null=True)),
                ('scheduled_arrival_time', models.TimeField(blank=True, db_column='Scheduled_arrival_time', null=True)),
                ('leg_mil', models.IntegerField(db_column='Leg_mil')),
            ],
            options={
                'db_table': 'flight_leg',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Reward',
            fields=[
                ('passport_number', models.OneToOneField(db_column='Passport_number', on_delete=django.db.models.deletion.DO_NOTHING, primary_key=True, serialize=False, to='airlineapp.customer')),
                ('mil', models.IntegerField(db_column='Mil')),
                ('discount', models.IntegerField(db_column='Discount')),
            ],
            options={
                'db_table': 'reward',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='LegInstance',
            fields=[
                ('flight_number', models.OneToOneField(db_column='Flight_number', on_delete=django.db.models.deletion.DO_NOTHING, primary_key=True, serialize=False, to='airlineapp.flightleg')),
                ('date', models.DateField(db_column='Date')),
                ('number_of_avaible_seats', models.IntegerField(blank=True, db_column='Number_of_avaible_seats', null=True)),
                ('departure_time', models.TimeField(db_column='Departure_time')),
                ('arrival_time', models.TimeField(db_column='Arrival_time')),
            ],
            options={
                'db_table': 'leg_instance',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Seat',
            fields=[
                ('flight_number', models.OneToOneField(db_column='Flight_number', on_delete=django.db.models.deletion.DO_NOTHING, primary_key=True, serialize=False, to='airlineapp.leginstance')),
                ('seat_number', models.CharField(db_column='Seat_number', max_length=4)),
                ('checked', models.CharField(db_column='Checked', max_length=3)),
            ],
            options={
                'db_table': 'seat',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Ffc',
            fields=[
                ('flight_number', models.OneToOneField(db_column='Flight_number', on_delete=django.db.models.deletion.DO_NOTHING, primary_key=True, related_name='ffc_requests_created1', serialize=False, to='airlineapp.seat')),
                ('mil', models.IntegerField(db_column='Mil')),
            ],
            options={
                'db_table': 'ffc',
                'managed': False,
            },
        ),
    ]
